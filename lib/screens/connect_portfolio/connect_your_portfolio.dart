import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/screens/connect_portfolio/investment_verification.dart';
import 'package:smart_harvest/screens/widgets/app_background.dart';
import 'package:smart_harvest/screens/widgets/navigate_pop_button.dart';
import 'package:smart_harvest/screens/widgets/pre_title_and_title.dart';
import 'package:smart_harvest/screens/widgets/terms_conditions_and_privacy_policy.dart';

class ConnectYourPortfolio extends StatefulWidget {
  final bool isSwitch;
  const ConnectYourPortfolio({super.key, this.isSwitch = false});

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
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(widget.isSwitch.toString()),
                SizedBox(height: 40.0),
                if (widget.isSwitch) ...[
                  ScreenTitle("Mohammed Abrar"),
                  Text("mohammedabrar312@gmail.com"),
                ] else ...[
                  ScreenPreTitle("Let’s manage your investments"),
                  ScreenTitle("Connect\nYour Portfolio"),
                ],
                Expanded(
                  child: Column(
                    spacing: 20.0,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (widget.isSwitch) ...[ScreenTitle("Switch Portfolio")],
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
                if (widget.isSwitch) ...[
                  Align(
                    alignment: Alignment.centerRight,
                    child: NavigatePopButton(),
                  ),
                ] else ...[
                  TermsConditionsAndPrivacyPolicy(),
                ],

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
