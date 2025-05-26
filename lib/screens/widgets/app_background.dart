import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';

class AppBackground extends StatelessWidget {
  final Widget child;
  const AppBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
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
          child,
        ],
      ),
    );
  }
}
