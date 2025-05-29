import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/core/app_theme.dart';
import 'package:smart_harvest/core/extensions.dart';
import 'package:smart_harvest/screens/home/section_design.dart';

class TaxSavingsTaxHarvesting extends StatelessWidget {
  const TaxSavingsTaxHarvesting({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionDesign(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 5.0,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Tata Motors Realized Gain:"), Text("15%")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("STCG Tax:"), Text("15% of ${'1,50,000'.inRupee}")],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "=${'22,500'.inRupee}",
              style: context.textTheme.titleSmall!.copyWith(
                color: context.errorColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Taxable Gain After Harvesting:"),
              Text("80,000".inRupee),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Tax Saved:"),
              Text("${'22,500'.inRupee} - ${'12,000'.inRupee}"),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "=${'10,500'.inRupee}",
              style: context.textTheme.titleSmall!.copyWith(
                color: AppTheme.successColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "You can use the ₹10,500 tax savings to reinvest in your portfolio. This will help you grow your wealth over time by compounding the returns.",
            style: context.textTheme.labelMedium,
          ),
          AppButton.link(
            padding: EdgeInsets.zero,
            title: "Learn more",
            onPressed: () {},
            hideUnderLine: true,
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
