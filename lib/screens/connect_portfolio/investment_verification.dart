import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:smart_harvest/screens/connect_portfolio/investment_permissions.dart';
import 'package:smart_harvest/screens/widgets/app_background.dart';

class InvestmentVerification extends StatefulWidget {
  final String type;
  const InvestmentVerification({super.key, required this.type});

  @override
  State<InvestmentVerification> createState() => InvestmentVerificationState();
}

class InvestmentVerificationState extends State<InvestmentVerification> {
  bool showResendButton = false;
  bool enableVerifyButton = false;
  int endTime = 59;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                SizedBox(height: 40.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Connect your ${widget.type} Portfolio".toUpperCase(),
                        style: context.textTheme.bodyLarge,
                      ),
                      Text(
                        "OTP\nVerification",
                        style: context.textTheme.headlineMedium,
                      ),
                      SizedBox(height: 20.0),
                      RichText(
                        text: TextSpan(
                          text: "We have sent an email to ",
                          style: context.textTheme.bodyMedium,
                          children: [
                            TextSpan(
                              text: "mohammedabrar312@gmail.com,",
                              style: context.textTheme.bodyMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: " please enter the code below.",
                              style: context.textTheme.bodyMedium,
                            ),
                          ],
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
                                  debugPrint(endTime.toString());
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
                        builder:
                            (context) =>
                                InvestmentPermission(type: widget.type),
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
