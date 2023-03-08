import 'package:flutter/material.dart';

void main() {
  runApp(const LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black,
          ),
          centerTitle: true,
          title: const Text(
            "Login",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
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
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Name Store',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),

                      TextFormField(
                        decoration: const InputDecoration(
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
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Password',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter Password",
                          hintStyle:  TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Sign in"),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
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
