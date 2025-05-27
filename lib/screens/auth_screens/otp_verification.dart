import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/screens/widgets/app_background.dart';

class OtpVerification extends StatefulWidget {
  final String mobileNumber;
  const OtpVerification({super.key, required this.mobileNumber});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.0),
                Text(
                  "Welcome to the club".toUpperCase(),
                  style: context.textTheme.bodyLarge,
                ),
                SizedBox(height: 20.0),
                Text(
                  "OTP\nVerification",
                  style: context.textTheme.headlineMedium,
                ),
                SizedBox(height: 20.0),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "Enter the code from the sms which we sent to the number +91-${widget.mobileNumber} (",
                      ),
                      TextSpan(
                        text: "Change",
                        style: context.textTheme.bodyMedium!.copyWith(
                          color: context.primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: context.primaryColor,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).pop();
                              },
                      ),
                      TextSpan(text: ")"),
                    ],
                    style: context.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
