import 'package:bankingapp/banking/screen/BankingSplash.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'banking/screen/hc/hc_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capital Bank',
      scrollBehavior: SBehavior(),
      home: HomeCreditSplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
