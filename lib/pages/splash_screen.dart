import 'dart:async';

import 'package:flutter/material.dart';
import './home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) {
            return HomePage();
          }),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/makan.gif'),
      ),
    );
  }
}
