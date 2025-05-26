import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [context.indicatorColor, context.secondaryColor],
            stops: [0.1, 0.65],
          ),
        ),
        child: Stack(
          children: [
            Positioned(child: Image.asset("assets/images/sun_shine.png")),
            Center(child: Image.asset("assets/images/logo.png")),
            Positioned(
              bottom: 30.0,
              right: 0.0,
              left: 0.0,
              child: Center(
                child: Text(
                  "Design with 💛 by CheetahFigX\nDeveloper by mabrar.site",
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
