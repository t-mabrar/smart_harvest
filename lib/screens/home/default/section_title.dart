import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
