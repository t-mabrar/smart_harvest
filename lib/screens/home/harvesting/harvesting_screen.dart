import 'package:flutter/material.dart';
import 'package:smart_harvest/core/extensions.dart';
import 'package:smart_harvest/screens/home/default/section_title.dart';
import 'package:smart_harvest/screens/home/harvesting/harvesting_each_stock_card.dart';
import 'package:smart_harvest/screens/home/harvesting/max_savings.dart';
import 'package:smart_harvest/screens/home/harvesting/net_taxable_gain.dart';
import 'package:smart_harvest/screens/home/harvesting/tax_calculation.dart';
import 'package:smart_harvest/screens/home/harvesting/tax_savings_tax_harvesting.dart';

class HarvestingScreen extends StatefulWidget {
  const HarvestingScreen({super.key});

  @override
  State<HarvestingScreen> createState() => _HarvestingScreenState();
}

class _HarvestingScreenState extends State<HarvestingScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 15.0,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle("Tax Harvesting Opportunities"),
          MaxSavings(),
          SectionTitle("Harvesting Insights"),
          HarvestingEachStockCard(
            stockData: HarvestingStockDataEntity(
              name: "Reliance Industries",
              amount: "50,000".inRupee,
              amountStatus: true,
              description:
                  "Sell 400 shares to further offset your gain in reliance.",
              link: "",
              investedValue: "8,00,000".inRupee,
              quantity: "500",
              currentValue: "9,50,000".inRupee,
            ),
          ),
          HarvestingEachStockCard(
            stockData: HarvestingStockDataEntity(
              name: "tata motors",
              amount: "50,000".inRupee,
              amountStatus: false,
              description:
                  "Sell 400 shares to further offset your gain in tat motors.",
              link: "",
              investedValue: "8,00,000".inRupee,
              quantity: "500",
              currentValue: "9,50,000".inRupee,
            ),
          ),
          HarvestingEachStockCard(
            stockData: HarvestingStockDataEntity(
              name: "hdfc bank",
              amount: "20,000".inRupee,
              amountStatus: false,
              description:
                  "Sell 400 shares to further offset your gain in tat motors.",
              link: "",
              investedValue: "8,00,000".inRupee,
              quantity: "500",
              currentValue: "9,50,000".inRupee,
            ),
          ),
          NetTaxableGain(),
          TaxCalculation(),
          SectionTitle("Tax Savings With Tax Harvesting"),
          TaxSavingsTaxHarvesting(),
        ],
      ),
    );
  }
}
