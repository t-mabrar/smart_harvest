import 'package:flutter/material.dart';

extension AppContext on BuildContext {
  Color get sectionBgColor => Theme.of(this).indicatorColor.withAlpha(200);
}

extension AppStrings on String {
  String get inRupee => "₹$this";
}
