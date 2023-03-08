import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hungry_hands/authentication/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 6), () {
      Get.to(LoginScreen());
    });
    return const Scaffold(
      body: Image(
        image: AssetImage("images/loadingscreen.png"),
      ),
    );
  }
}
