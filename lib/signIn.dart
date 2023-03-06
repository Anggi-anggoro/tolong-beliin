import 'package:flutter/material.dart';

void main() {
  runApp(const SignInScreen());
}

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
            "Sign Up",
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
                        decoration: const InputDecoration(
                          hintText: "Full Name / Merchant",
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Email / number phone",
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Password",
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Code referal",
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Sign in"),
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
