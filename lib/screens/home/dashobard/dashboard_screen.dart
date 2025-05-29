import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/screens/home/dashobard/gain_and_loss.dart';
import 'package:smart_harvest/screens/home/dashobard/portfolio_value.dart';
import 'package:smart_harvest/screens/home/dashobard/potential_savings.dart';
import 'package:smart_harvest/screens/home/dashobard/stocks_list.dart';
import 'package:smart_harvest/screens/home/dashobard/tax_strategies.dart';
import 'package:smart_harvest/screens/home/section_design.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 15.0,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total Portfolio value",
            style: context.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          PortfolioValue(),
          GainAndLoss(),

          Text(
            "Tax Harvesting Opportunities",
            style: context.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          PotentialSavings(),
          StocksList(),
          Text(
            "Learn Tax Strategies",
            style: context.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          TaxStrategies(),
          SectionDesign(
            child: Row(
              spacing: 5.0,
              children: [
                Image.asset("assets/gifs/save_money.gif", scale: 5),
                Flexible(
                  child: Text(
                    "Learn how to optimize your savings through strategic planning and actions.",
                    style: context.textTheme.labelLarge,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 16.0,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Text(
            "Refer & Earn",
            style: context.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SectionDesign(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Refer 3 Friends, Get a free Membership"),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Expanded(
                      child: AppButton(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        suffix: Icon(
                          Icons.copy_rounded,
                          color: Colors.white,
                          size: 14.0,
                        ),
                        isExpanded: true,
                        borderRadius: 50.0,
                        fontColor: Colors.white,
                        color: Colors.white.withAlpha(50),
                        title: "shareharvest.com/mabrar",
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(width: 15.0),
                    AppButton(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 30.0,
                      ),
                      borderRadius: 50.0,
                      fontColor: Colors.white,
                      title: "Share",
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
