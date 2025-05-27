import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_harvest/screens/auth_screens/otp_verification.dart';
import 'package:smart_harvest/screens/widgets/app_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool buttonEnable = false;
  final mobileNumberController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
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
                        "Tell us your\nmobile number",
                        style: context.textTheme.headlineMedium,
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/india_flag.svg",
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    "+91",
                                    style: context.textTheme.titleSmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Expanded(
                            child: Form(
                              key: formKey,
                              child: AppFormTextField(
                                isRequired: true,
                                errorText: "Enter your mobile number",
                                controller: mobileNumberController,
                                keyboardType: TextInputType.numberWithOptions(),
                                maxLength: 10,
                                onChanged: (value) {
                                  setState(() {
                                    buttonEnable = value.length == 10;
                                  });
                                },
                                defaultRadius: 10.0,
                                hintText: "Mobile Number",
                                enabledBorderColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      RichText(
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
                      ),
                    ],
                  ),
                ),
                AppButton(
                  isEnabled: buttonEnable,
                  title: "Send OTP",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => OtpVerification(
                                mobileNumber: mobileNumberController.text,
                              ),
                        ),
                      );
                    }
                  },
                  isExpanded: true,
                  borderRadius: 50.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
