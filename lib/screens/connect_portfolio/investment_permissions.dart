import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_harvest/screens/widgets/app_background.dart';
import 'package:smart_harvest/screens/widgets/terms_conditions_and_privacy_policy.dart';

class InvestmentPermission extends StatefulWidget {
  final String type;
  const InvestmentPermission({super.key, required this.type});

  @override
  State<InvestmentPermission> createState() => InvestmentPermissionState();
}

class InvestmentPermissionState extends State<InvestmentPermission> {
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
                SizedBox(height: 40.0),
                Text(
                  "Connect your ${widget.type} Portfolio".toUpperCase(),
                  style: context.textTheme.bodyLarge,
                ),
                Text(
                  "Give Permission\nto View Your Portfolio",
                  style: context.textTheme.headlineMedium,
                ),
                Expanded(
                  child: Center(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xFF331201).withAlpha(210),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 30.0,
                        ),
                        child: Column(
                          spacing: 20.0,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              leading: SvgPicture.asset(
                                "assets/svgs/holdings_transactions.svg",
                              ),
                              title: Text(
                                "Assess your portfolio holdings and transaction data.",
                                style: context.textTheme.bodyMedium,
                              ),
                            ),
                            ListTile(
                              leading: SvgPicture.asset(
                                "assets/svgs/investment_performance.svg",
                              ),
                              title: Text(
                                "Analyze investment performance to uncover potential tax benefits.",
                                style: context.textTheme.bodyMedium,
                              ),
                            ),
                            ListTile(
                              leading: SvgPicture.asset(
                                "assets/svgs/safety.svg",
                              ),
                              title: Text(
                                "Your data is encrypted and kept strictly confidential.",
                                style: context.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                TermsConditionsAndPrivacyPolicy(),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Expanded(
                      child: AppButton(
                        title: "Deny",
                        onPressed: () {},
                        color: Colors.transparent,
                        borderRadius: 50.0,
                        border: Border.all(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Expanded(
                      child: AppButton(
                        title: "Allow",
                        onPressed: () {},
                        borderRadius: 50.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
