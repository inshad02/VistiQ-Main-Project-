import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xff5731AB),
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          height: 180,
          width: 180,
        ),
      ),
    );
  }
}
