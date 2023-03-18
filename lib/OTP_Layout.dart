
import 'package:flutter/material.dart';
import 'component/top/header.dart';
import 'component/utils/primary_button.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';


class VerificationScreen1 extends StatefulWidget {
  @override
  OneTimePasswordLayout createState() => OneTimePasswordLayout();
}

class OneTimePasswordLayout extends State<VerificationScreen1> {
  late List<TextStyle?> otpTextStyles;
  late List<TextEditingController?> controls;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: const HeaderTitle(
                headerTitle: "Login"
            ),
            body: Column(
              children: [
                 OtpTextField(
                   numberOfFields: 6,
                        borderColor: Color(0xFF512DA8),
                        showFieldAsBox: true,
                        onCodeChanged: (String value) {
                        },
                       handleControllers: (controllers) {
                        controls = controllers;
                         },
                        onSubmit: (String verificationCode) {
                        setState(() {
                        var clearText = false;
            });
            //navigate to different screen code goes here
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Verification Code"),
                  content: Text('Code entered is $verificationCode'),
                );
              },
            );
          }, // end onSubmit
            ),
                PrimaryButton(
                    text: "Send",
                    width: 200,
                    height: 50,
                    onPressed: () {}
                ),

              ],
            ),

        )
    );

  }
}

