import 'package:flutter/material.dart';
import 'package:masjid/account.dart';
import 'package:masjid/adminlogin.dart';
import 'package:masjid/appBar.dart';
import 'package:masjid/welcome.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Appbar(),
     //home: WelcomePage(),
      //home:AdminLoginPage(),
      home: FeedbackScreen(),

    );
  }
}
