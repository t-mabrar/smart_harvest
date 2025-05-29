import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/core/extensions.dart';
import 'package:smart_harvest/screens/home/dashobard/each_stock_card.dart';
import 'package:smart_harvest/screens/home/section_design.dart';

class StocksList extends StatefulWidget {
  const StocksList({super.key});

  @override
  State<StocksList> createState() => _StocksListState();
}

class _StocksListState extends State<StocksList> {
  late PageController controller;
  @override
  void initState() {
    controller = PageController(viewportFraction: 0.95, keepPage: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: PageView(
        pageSnapping: false,
        padEnds: false,
        controller: controller,
        children: [
          EachStockCard(
            stockData: StockDataEntity(
              name: "Reliance industries",
              image: "assets/images/reliance_logo.png",
              amount: "50,000".inRupee,
              description:
                  "Sell 400 shares to further offset your gain in Tata Motors.",
              link: "",
            ),
          ),
          EachStockCard(
            stockData: StockDataEntity(
              name: "HDFC Bank",
              image: "assets/images/hdfc_logo.png",
              amount: "50,000".inRupee,
              description:
                  "Sell 400 shares to further offset your gain in Tata Motors.",
              link: "",
            ),
            isLast: true,
          ),
        ],
      ),
    );
  }
}
