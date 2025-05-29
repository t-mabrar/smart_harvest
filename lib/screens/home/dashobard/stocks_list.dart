import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/core/extensions.dart';
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
                  "Sell 400 shares to further offset your gain in Tata Motors.Learn more",
              link: "",
            ),
          ),
          EachStockCard(
            stockData: StockDataEntity(
              name: "HDFC Bank",
              image: "assets/images/hdfc_logo.png",
              amount: "50,000".inRupee,
              description:
                  "Sell 400 shares to further offset your gain in Tata Motors.Learn more",
              link: "",
            ),
            isLast: true,
          ),
        ],
      ),
    );
  }
}

class EachStockCard extends StatelessWidget {
  final StockDataEntity stockData;
  final bool isLast;
  const EachStockCard({
    super.key,
    required this.stockData,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isLast ? EdgeInsets.zero : const EdgeInsets.only(right: 20.0),
      child: SectionDesign(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(stockData.image, scale: 100.0),
                            SizedBox(width: 10.0),
                            Text(
                              stockData.name.toUpperCase(),
                              style: context.textTheme.labelMedium,
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                        Row(
                          children: [
                            Text(
                              stockData.amount,
                              style: context.textTheme.titleSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5.0),
                            Icon(
                              Icons.arrow_drop_down_rounded,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  AppButton(
                    title: "Sell",
                    onPressed: () {},
                    borderRadius: 50.0,
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            Text(stockData.description, style: context.textTheme.bodySmall),
            AppButton.link(
              title: "Learn more",
              onPressed: () {},
              hideUnderLine: true,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}

class StockDataEntity {
  final String name;
  final String image;
  final String amount;
  final String description;
  final String link;

  StockDataEntity({
    required this.name,
    required this.image,
    required this.amount,
    required this.description,
    required this.link,
  });
}
