import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/screens/widgets/app_background.dart';
import 'package:smart_harvest/screens/widgets/navigate_pop_button.dart';
import 'package:smart_harvest/screens/widgets/pre_title_and_title.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

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
                Center(child: ScreenTitle("About Us")),
                Expanded(
                  child: Column(
                    spacing: 15.0,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/logo.png", scale: 1.5),
                      Text(
                        "Effortlessly identify tax-saving opportunities within your portfolio.",
                        style: context.textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "The only app you need for tax-efficient investing. Our AI-powered engine analyzes your portfolio 24/7, identifies hidden tax-saving opportunities, and provides personalized recommendations. Take control of your taxes and achieve your financial goals faster.",
                        style: context.textTheme.bodyMedium,
                      ),
                      RichText(
                        text: TextSpan(
                          text:
                              "If you have any inquiries or need further assistance, please reach out to us at: ",
                          children: [
                            TextSpan(
                              text: "support@smartharvest.in",
                              style: context.textTheme.bodyMedium!.copyWith(
                                color: context.primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                          style: context.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: NavigatePopButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
