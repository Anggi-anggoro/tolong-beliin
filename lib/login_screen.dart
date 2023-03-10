import 'package:flutter/material.dart';
import 'package:homescreen/component/top/header.dart';
import 'package:homescreen/component/utils/primary_button.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        appBar: const HeaderTitle(
            headerTitle: "Login",
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/homescreen/tolong beliin-3.png',
                  height: 200,
                  width: 200,
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
                            'Name Store',
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.7),
                              fontWeight: FontWeight.w500,

                            ),
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
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
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child:  Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Password',
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.7),
                              fontWeight: FontWeight.w500,

                            ),
                          ),
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
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
                          hintText: "Enter Password",
                          hintStyle:  TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      const SizedBox(height: 30),
                      PrimaryButton(
                          text: "Login",
                          width: screen.width,
                          height: 40,
                          onPressed: (){}
                      ),

                      const SizedBox(height: 10),
                      Container(
                        child: Column(
                          children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "If you don't have an account?",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          "Sign up",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                    ),
                                  ]
                              ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Colors.orangeAccent,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      )
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
