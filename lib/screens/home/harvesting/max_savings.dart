import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/core/extensions.dart';
import 'package:smart_harvest/screens/home/section_design.dart';

class MaxSavings extends StatelessWidget {
  const MaxSavings({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionDesign(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Maximum your Tax Savings"),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Text(
                          "10,500".inRupee,
                          style: context.textTheme.titleLarge!.copyWith(
                            color: context.primaryColor,
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 15.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Image.asset("assets/gifs/rupee.gif", scale: 2.5),
            ],
          ),
          Text(
            "${'70,000'.inRupee} losses available to offset ${'1,50,000'.inRupee} gains",
            style: context.textTheme.labelMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.0),
          AppButton(
            buttonFullWidth: true,
            borderRadius: 50.0,
            title: "View Tax Harvesting Opportunities",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
