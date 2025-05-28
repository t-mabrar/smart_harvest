import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';

class TermsConditionsAndPrivacyPolicy extends StatelessWidget {
  const TermsConditionsAndPrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: "By proceeding, you agree to "),
          TextSpan(
            text: "Terms & Conditions",
            style: context.textTheme.bodySmall!.copyWith(
              color: context.primaryColor,
              decoration: TextDecoration.underline,
              decorationColor: context.primaryColor,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          TextSpan(text: " and "),
          TextSpan(
            text: "Privacy Policy",
            style: context.textTheme.bodySmall!.copyWith(
              color: context.primaryColor,
              decoration: TextDecoration.underline,
              decorationColor: context.primaryColor,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          TextSpan(text: " of Smart Harvesting."),
        ],
        style: context.textTheme.bodySmall,
      ),
    );
  }
}
