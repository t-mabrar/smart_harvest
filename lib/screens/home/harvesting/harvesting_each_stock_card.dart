import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/core/app_theme.dart';
import 'package:smart_harvest/screens/home/section_design.dart';

class HarvestingEachStockCard extends StatelessWidget {
  final HarvestingStockDataEntity stockData;
  const HarvestingEachStockCard({super.key, required this.stockData});

  @override
  Widget build(BuildContext context) {
    return SectionDesign(
      child: Column(
        spacing: 10.0,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.check_box, color: context.primaryColor),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stockData.name.toUpperCase(),
                      style: context.textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Row(
                      children: [
                        Text(
                          stockData.amount,
                          style: context.textTheme.titleSmall!.copyWith(
                            color:
                                stockData.amountStatus
                                    ? AppTheme.successColor
                                    : context.errorColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (stockData.amountStatus)
                          Icon(
                            Icons.arrow_drop_up_rounded,
                            color: Colors.green,
                            size: 30.0,
                          )
                        else
                          Icon(
                            Icons.arrow_drop_down_rounded,
                            color: Colors.red,
                            size: 30.0,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Invested Value", style: context.textTheme.bodySmall),
                    Text(
                      stockData.investedValue,
                      style: context.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                VerticalDivider(
                  color: Colors.grey,
                  width: 1.0,
                  thickness: 1.0,
                  indent: 10.0,
                  endIndent: 10.0,
                ),
                Column(
                  children: [
                    Text("Quantity", style: context.textTheme.bodySmall),
                    Text(
                      stockData.quantity,
                      style: context.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                VerticalDivider(
                  color: Colors.grey,
                  width: 1.0,
                  thickness: 1.0,
                  indent: 10.0,
                  endIndent: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Current Value", style: context.textTheme.bodySmall),
                    Text(
                      stockData.currentValue,
                      style: context.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                stockData.description,
                style: context.textTheme.labelMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              AppButton.link(
                title: "Learn more",
                onPressed: () {},
                hideUnderLine: true,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HarvestingStockDataEntity {
  final String name;
  final String amount;
  final bool amountStatus;
  final String description;
  final String link;
  final String investedValue;
  final String quantity;
  final String currentValue;

  HarvestingStockDataEntity({
    required this.name,
    required this.amount,
    required this.amountStatus,
    required this.description,
    required this.link,
    required this.investedValue,
    required this.quantity,
    required this.currentValue,
  });
}
