import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/screens/onboarding_screen.dart';
import 'package:smart_harvest/screens/widgets/app_background.dart';
import 'package:smart_harvest/screens/widgets/designer_details.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [context.indicatorColor, context.secondaryColor],
                stops: [0.1, 0.65],
              ),
            ),
            child: AppBackground(child: Container()),
          ),
          Image.asset("assets/images/get_started_bg.png"),
          Positioned(
            top: 40.0,
            left: 0.0,
            right: 0.0,
            child: Image.asset("assets/images/logo.png", scale: 1.5),
          ),
          Positioned(
            bottom: 45.0,
            left: 0.0,
            right: 0.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                spacing: 30.0,
                children: [
                  AppButton(
                    title: "Secure, Simple, Smart Harvesting",
                    onPressed: () {},
                    borderRadius: 50.0,
                    color: context.primaryColor.withAlpha(
                      ((255 / 100) * 40).toInt(),
                    ),
                    prefix: Icon(Icons.trending_up, color: Colors.white),
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 10.0,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Focused on "),
                        WidgetSpan(
                          child: Image.asset(
                            "assets/images/get_started_persons.png",
                          ),
                        ),
                        TextSpan(
                          text:
                              "\nyou, designed to optimize your tax efficiency.",
                        ),
                      ],
                      style: context.textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Manage your money effortlessly\nwith secure tools and smart features",
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  AppButton(
                    title: "Get Started",
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnBoardingScreen(),
                        ),
                      );
                    },
                    isExpanded: true,
                    borderRadius: 50.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  Center(child: DesignerDetails()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
