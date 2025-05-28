import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';

class DesignerDetails extends StatelessWidget {
  final bool showDeveloper;
  const DesignerDetails({super.key, this.showDeveloper = true});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Design with 💛 by CheetahFigX${showDeveloper ? '\nDeveloped by mabrar.site' : ''}",
      textAlign: TextAlign.center,
      style: context.textTheme.bodyMedium,
    );
  }
}
