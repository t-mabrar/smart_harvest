import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/core/app_theme.dart';
import 'package:smart_harvest/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Harvestl',
      theme: AppTheme.appTheme,
      home: SplashScreen(),
    );
  }
}
