// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:smart_harvest/screens/get_started_screen.dart';
import 'package:smart_harvest/screens/home/home_screen.dart';
import 'package:smart_harvest/screens/widgets/app_background.dart';
import 'package:smart_harvest/screens/widgets/designer_details.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => GetStartedScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Stack(
          children: [
            Center(child: Image.asset("assets/images/logo.png")),
            Positioned(
              bottom: 30.0,
              right: 0.0,
              left: 0.0,
              child: Center(child: DesignerDetails()),
            ),
          ],
        ),
      ),
    );
  }
}
