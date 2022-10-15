import 'package:flutter/material.dart';
import 'package:test_one/wedget/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF69A03A),
      body: SplashBody(),
    );
  }
}
