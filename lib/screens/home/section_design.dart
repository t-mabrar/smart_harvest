import 'package:flutter/material.dart';
import 'package:smart_harvest/core/extensions.dart';

class SectionDesign extends StatelessWidget {
  final Widget child;
  const SectionDesign({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.sectionBgColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(padding: EdgeInsets.all(15.0), child: child),
    );
  }
}
