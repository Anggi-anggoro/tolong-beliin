import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homescreen/OTP_Layout.dart';
import 'package:homescreen/component/top/header.dart';
import 'package:homescreen/component/utils/primary_button.dart';
import 'package:homescreen/sign_in_screen.dart';
import 'package:http/http.dart' as http;
import 'package:platform_device_id/platform_device_id.dart';


class ForgetPasswordScreen extends StatefulWidget {
  @override
  ForgetPasswordScreenState createState() => ForgetPasswordScreenState();

}

class ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController nameStoreController = TextEditingController();
  bool validateNameStore = false;
  // bool validatePassword = false;
  String? idDevice;
  void getDeviceIDUsingPlugin() async {
    var device = await PlatformDeviceId.getDeviceId;
    idDevice = device.toString();
  }


  submitForm (nameStoreController, idDevice ,context)  async {
    String username = nameStoreController.text;

    setState(() {
      username.isEmpty ? validateNameStore = true  : validateNameStore = false;

    });
    if(username.isNotEmpty ) {
      http.Response response = await forgetPassword(username,idDevice);
      print(response.body);
      final data = json.decode(response.body);
      if(data['status'].toString() == 'false') {
        String errorMessage = data['message'];
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(errorMessage),
              );
            }
        );
      }
      else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  OtpScreen(username: username,status: "password")),
        );
      }

    }
  }

  Future<http.Response> forgetPassword(String fullname, String idDeviceDua) {
    print("tes $idDeviceDua");
    return http.post(
      Uri.parse('https://dev.tolongbeliin.com/api/merchant/lupaPasswordKode'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'fullname': fullname,
        'iddevice': idDeviceDua,
      }),
    );
  }



  @override
  Widget build(BuildContext context) {
    getDeviceIDUsingPlugin();
    // Size screen = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const HeaderTitle(
          headerTitle: "Forget Password",
        ),
        body: Container(
          decoration:const BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(
                    'assets/homescreen/Bottom Vector Ads.png',
                  )
              )
          ),
          margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/homescreen/tolong beliin-3.png',
                  height: 300,
                  width: 300,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child:  Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Enter your name store:',
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.7),
                              fontWeight: FontWeight.w500,

                            ),
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: nameStoreController,
                        decoration: InputDecoration(
                          errorText:  validateNameStore ? "Enter your name store" : null,
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black12
                              )
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black12
                              )
                          ),
                          hintText: "Enter name store",
                          hintStyle:  TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const SizedBox(height: 15),
                      PrimaryButton(
                          text: "Reset Password",
                          width: 300,
                          height: 40,
                          onPressed: (){
                            submitForm(nameStoreController, idDevice,context);
                            //  Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) =>  VerificationScreen1()),
                            //  );
                          }
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}