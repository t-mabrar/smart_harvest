import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/core/app_theme.dart';
import 'package:smart_harvest/core/extensions.dart';
import 'package:smart_harvest/screens/home/section_design.dart';

class TaxCalculation extends StatelessWidget {
  const TaxCalculation({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionDesign(
      child: Column(
        spacing: 5.0,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Tax Calculation"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("STCG Tax Rate"), Text("15%")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("STCG Tax"), Text("15% of ${'80,000'.inRupee}")],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "=${'12,000'.inRupee}",
              style: context.textTheme.titleSmall!.copyWith(
                color: AppTheme.successColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 5.0),
          RichText(
            text: TextSpan(
              text:
                  "After using Tax Loss Harvesting, you will only need to pay",
              children: [
                TextSpan(
                  text: " ₹12,000 ",
                  style: context.textTheme.labelLarge!.copyWith(
                    color: context.errorColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      "as tax on your net taxable gain of ₹80,000 from Tata Motors.",
                ),
              ],
              style: context.textTheme.labelMedium,
            ),
          ),
        ],
      ),
    );
  }
}
