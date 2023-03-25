import 'package:flutter/material.dart';
import 'package:homescreen/component/utils/primary_button.dart';
import 'package:homescreen/component/utils/text_input_bg_grey.dart';
import 'package:platform_device_id/platform_device_id.dart';

import 'Detail_page.dart';
import 'OTP_Layout.dart';
import 'component/top/header.dart';
import 'component/utils/Styling.dart';


class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();

  final fullname = TextEditingController();
  final emailphone = TextEditingController();
  final userpass = TextEditingController();
  final codeReferal = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const HeaderTitle(
            headerTitle: "Sign Up"
        ),
        body: Form(
          key: _formKey,
          child:  Container(
              height: screen.height,
              decoration:const BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.bottomCenter,
                      image: AssetImage(
                        'assets/homescreen/Bottom Vector Ads.png',
                      )
                  )
              ),
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: SingleChildScrollView(
                child:  Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      'assets/homescreen/tolong beliin-3.png',
                      height: screen.height/6,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: const Text(
                              "Merchant",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration: TextFieldStyle.textFieldStyle(
                                hintTextStr: "Full Name / Merchant",
                                labelTextStr: "Full Name / Merchant"
                            ),
                            controller: fullname,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Nama toko tidak boleh kosong';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: emailphone,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Email/phonetidak boleh kosong';
                              }
                              return null;
                            },
                            decoration: TextFieldStyle.textFieldStyle(
                                hintTextStr: "Email / Phone number",
                                labelTextStr: "Email / Phone number"
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            obscureText: true,
                            controller: userpass,
                            decoration: TextFieldStyle.textFieldStyle(
                                hintTextStr: "Password",
                                labelTextStr: "Password"
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password tidak boleh kosong';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: codeReferal,
                            decoration: TextFieldStyle.textFieldStyle(
                                hintTextStr: "Code Referral",
                                labelTextStr: "Code Referral"
                            ),
                          ),
                          const SizedBox(height: 30),
                          PrimaryButton(
                            text: "Sign in",
                            width: screen.width,
                            height: 40,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => DetailPage(fullname: fullname.text, emailphone: emailphone.text, userpass: userpass.text,)
                                    )
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )

          ),
        ),
      ),
    );
  }
}
