
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key,
  });

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget> [
             Positioned(
                bottom: 0,
                left: 0,
                height: 250,
                width: 400,
                child: Container(
                  color: Colors.green,
                )
            ),

            Center(
              child: Image.asset(
                'assets/homescreen/tolong beliin-3.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
