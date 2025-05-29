import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:smart_harvest/screens/connect_portfolio/connect_your_portfolio.dart';
import 'package:smart_harvest/screens/widgets/app_background.dart';
import 'package:smart_harvest/screens/widgets/pre_title_and_title.dart';

class OtpVerification extends StatefulWidget {
  final String mobileNumber;
  const OtpVerification({super.key, required this.mobileNumber});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  bool showResendButton = false;
  bool enableVerifyButton = false;
  int endTime = 59;
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
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ScreenPreTitle("Welcome to the club"),
                      ScreenTitle("OTP\nVerification"),
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
                      SizedBox(height: 20.0),
                      OtpTextField(
                        numberOfFields: 6,
                        fieldWidth: 50.0,
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        hasCustomInputDecoration: true,
                        onSubmit: (value) {
                          if (value.length == 6) {
                            setState(() {
                              enableVerifyButton = true;
                            });
                          }
                        },
                        onCodeChanged: (value) {
                          if (value.length == 6) {
                            setState(() {
                              enableVerifyButton = true;
                            });
                          } else {
                            setState(() {
                              enableVerifyButton = false;
                            });
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            bottom: 5.0,
                            top: 5.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: context.primaryColor),
                          ),
                        ),
                      ),
                      showResendButton
                          ? AppButton.link(
                            title: "Resend OTP",
                            onPressed: () {
                              setState(() {
                                showResendButton = false;
                              });
                            },
                          )
                          : Row(
                            children: [
                              Text("Resend the code after "),
                              TimerCountdown(
                                timeTextStyle: context.textTheme.bodyMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                                colonsTextStyle: context.textTheme.bodyMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                                spacerWidth: 5.0,
                                enableDescriptions: false,
                                format: CountDownTimerFormat.minutesSeconds,
                                endTime: DateTime.now().add(
                                  Duration(seconds: endTime),
                                ),
                                onEnd: () {
                                  setState(() {
                                    showResendButton = true;
                                  });
                                },
                              ),
                            ],
                          ),
                    ],
                  ),
                ),
                AppButton(
                  title: "Proceed to Verify",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConnectYourPortfolio(),
                      ),
                    );
                  },
                  borderRadius: 50.0,
                  buttonFullWidth: true,
                  isEnabled: enableVerifyButton,
                  prefix: Icon(Icons.lock, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
