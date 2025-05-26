import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';

class DesignerDetails extends StatelessWidget {
  const DesignerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Design with 💛 by CheetahFigX\nDeveloped by mabrar.site",
        textAlign: TextAlign.center,
        style: context.textTheme.bodyMedium,
      ),
    );
  }
}
