import 'package:flutter/material.dart';

import 'component/top/header.dart';

void main() {
  runApp(const AdsScreen());
}

class AdsScreen extends StatelessWidget {
  const AdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          appBar: const HeaderTitle(
              headerTitle: "Login"
          ),
          body: Container(
            decoration: const BoxDecoration(
                image:  DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/homescreen/background-vector.png',
                    )
                )
            ),
            margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/homescreen/tolong beliin-3.png',
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: RichText(
                        textAlign: TextAlign.center,
                          text: const TextSpan(
                          style: TextStyle(
                            color: Colors.green,
                          ),
                          children: [
                             TextSpan(
                              text: "Your selling one app \n \n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 27,
                                letterSpacing: -0.7,
                                wordSpacing: 1,
                              )
                            ),
                            TextSpan(
                              text: "Everything that you need to \n"
                                  "know about your setting is now here. \n"
                                  "All the information in one app",
                              style: TextStyle(
                                fontSize: 18,
                              )
                            )
                          ]
                        ),
                      )
                    )
                  ],
                )
            ),
          )
      ),
    );
  }
}