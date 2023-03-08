import 'package:flutter/material.dart';

import 'component/layout/Ads_screen_layout.dart';
void main() {
  runApp(const AdsScreen());
}

class AdsScreen extends StatelessWidget {
  const AdsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
            body: AdsScreenLayout(),
        )
    );
  }
}




