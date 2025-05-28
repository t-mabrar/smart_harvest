import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';

class ScreenPreTitle extends StatelessWidget {
  final String title;
  const ScreenPreTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(title.toUpperCase(), style: context.textTheme.bodyLarge);
  }
}

class ScreenTitle extends StatelessWidget {
  final String title;
  const ScreenTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: context.textTheme.headlineMedium);
  }
}
