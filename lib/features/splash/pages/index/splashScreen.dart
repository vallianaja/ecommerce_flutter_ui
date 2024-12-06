import 'package:ecommerce_skl_project/features/auth/pages/login_page.dart';
import 'package:ecommerce_skl_project/preferences/colors.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:ecommerce_skl_project/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Menunda navigasi ke layar utama selama 3 detik
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const MainPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBG,
      body: Center(
        child: Image.asset(
          'assets/images/splash.png',
          width: 170,
        ),
      ),
    );
  }
}
