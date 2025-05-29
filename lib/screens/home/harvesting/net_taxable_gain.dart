import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/core/app_theme.dart';
import 'package:smart_harvest/core/extensions.dart';
import 'package:smart_harvest/screens/home/section_design.dart';

class NetTaxableGain extends StatelessWidget {
  const NetTaxableGain({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionDesign(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Total Realized Gain"), Text("1,50,000".inRupee)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Total Realized Loss"), Text("70,000".inRupee)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Total Realized Loss",
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: AppTheme.successColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    // padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppTheme.successColor,
                    ),
                    child: Center(
                      child: Text(
                        "".inRupee,
                        textAlign: TextAlign.center,
                        style: context.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "80,000".inRupee,
                style: context.textTheme.titleSmall!.copyWith(
                  color: AppTheme.successColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
