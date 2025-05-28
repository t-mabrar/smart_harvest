import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/screens/connect_portfolio/investment_verification.dart';
import 'package:smart_harvest/screens/widgets/app_background.dart';
import 'package:smart_harvest/screens/widgets/terms_conditions_and_privacy_policy.dart';

class ConnectYourPortfolio extends StatefulWidget {
  const ConnectYourPortfolio({super.key});

  @override
  State<ConnectYourPortfolio> createState() => _ConnectYourPortfolioState();
}

class _ConnectYourPortfolioState extends State<ConnectYourPortfolio> {
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
                  "Let’s manage your investments".toUpperCase(),
                  style: context.textTheme.bodyLarge,
                ),
                Text(
                  "Connect\nYour Portfolio",
                  style: context.textTheme.headlineMedium,
                ),
                Expanded(
                  child: Column(
                    spacing: 20.0,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      EachInvestmentCard(
                        image:
                            "assets/images/investment_platforms/dhan_logo.png",
                        title: "Dhan",
                      ),
                      EachInvestmentCard(
                        image:
                            "assets/images/investment_platforms/groww_logo.png",
                        title: "Groww",
                      ),
                      EachInvestmentCard(
                        image:
                            "assets/images/investment_platforms/ind_money_logo.png",
                        title: "IND Money",
                      ),
                      EachInvestmentCard(
                        image:
                            "assets/images/investment_platforms/zerodha_logo.png",
                        title: "Zerodha",
                      ),
                      EachInvestmentCard(
                        image:
                            "assets/images/investment_platforms/upstox_logo.png",
                        title: "Upstox",
                      ),
                      SizedBox(height: 5.0),
                    ],
                  ),
                ),
                TermsConditionsAndPrivacyPolicy(),
                SizedBox(height: 5.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EachInvestmentCard extends StatelessWidget {
  final String image;
  final String title;
  const EachInvestmentCard({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => InvestmentVerification(type: title),
          ),
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image),
              SizedBox(width: 10.0),
              Text(
                title,
                style: context.textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
