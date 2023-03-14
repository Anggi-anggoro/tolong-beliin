
import 'package:flutter/material.dart';
import 'package:homescreen/component/layout/Ads_screen_layout.dart';
import 'package:homescreen/component/layout/home_screen_merchant.dart';
import 'package:homescreen/component/top/header_merchant.dart';
import 'package:homescreen/login_screen.dart';
import 'package:homescreen/sign_in_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
          home: AdsScreenLayout(),

    );
  }
}
