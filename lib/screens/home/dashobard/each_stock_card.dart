import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/screens/home/section_design.dart';

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
