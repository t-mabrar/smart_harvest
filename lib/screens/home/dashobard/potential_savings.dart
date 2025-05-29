import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/core/extensions.dart';
import 'package:smart_harvest/screens/home/section_design.dart';

class PotentialSavings extends StatelessWidget {
  const PotentialSavings({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionDesign(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Potential Savings"),
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
          ),
        ],
      ),
    );
  }
}
