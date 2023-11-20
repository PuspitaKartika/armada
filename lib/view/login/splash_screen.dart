import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/login');
    });
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/logo.png",
          width: MediaQuery.of(context).size.width * 0.75,
        ),
      ),
    );
  }
}
