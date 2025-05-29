import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/screens/home/section_design.dart';

class TaxStrategies extends StatefulWidget {
  const TaxStrategies({super.key});

  @override
  State<TaxStrategies> createState() => _TaxStrategiesState();
}

class _TaxStrategiesState extends State<TaxStrategies> {
  late PageController controller;
  @override
  void initState() {
    controller = PageController(viewportFraction: 0.95, keepPage: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.0,
      child: PageView(
        pageSnapping: false,
        padEnds: false,
        controller: controller,
        children: [
          EachStrategyCard(
            data: StrategyDataEntity(
              status: StrategyStatus.inProgress,
              title: "What is Tax Harvesting?",
              description:
                  "Tax harvesting is the practice of selling investments that have declined in value to realize a loss. These losses can be used to offset capital gains from other investments, reducing taxable income.",
              index: 1,
            ),
          ),
          EachStrategyCard(
            data: StrategyDataEntity(
              status: StrategyStatus.queued,
              title: "How Does Tax Harvesting Work?",
              description:
                  "The process of identifying investments with losses, selling them strategically, and reinvesting to maintain a balanced portfolio while complying with tax rules.",
              index: 2,
            ),
          ),
          EachStrategyCard(
            data: StrategyDataEntity(
              status: StrategyStatus.queued,
              title: "What is Tax Harvesting?",
              description:
                  "Tax harvesting is the practice of selling investments that have declined in value to realize a loss. These losses can be used to offset capital gains from other investments, reducing taxable income.",
              index: 3,
            ),
            isLast: true,
          ),
        ],
      ),
    );
  }
}

class EachStrategyCard extends StatelessWidget {
  final StrategyDataEntity data;
  final bool isLast;
  const EachStrategyCard({super.key, required this.data, this.isLast = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isLast ? EdgeInsets.zero : const EdgeInsets.only(right: 20.0),
      child: SectionDesign(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppButton(
                  fontWeight: FontWeight.bold,
                  fontSize: 13.0,
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 20.0,
                  ),
                  borderRadius: 50.0,
                  border: Border.all(color: context.primaryColor),
                  color: context.primaryColor.withAlpha(25),
                  fontColor: context.primaryColor,
                  title:
                      data.status == StrategyStatus.inProgress
                          ? "In Progress"
                          : data.status == StrategyStatus.queued
                          ? "Queued"
                          : "Completed",
                  onPressed: () {},
                ),
                RichText(
                  text: TextSpan(
                    text: data.index.toString(),
                    children: [
                      TextSpan(
                        text: "/12",
                        style: context.textTheme.bodySmall!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: context.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Text(
              data.title,
              style: context.textTheme.bodySmall!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              data.description,
              style: context.textTheme.labelLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 10.0),
            AppButton(
              fontWeight: FontWeight.bold,
              borderRadius: 50.0,
              fontSize: 12.0,
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              title:
                  data.status == StrategyStatus.queued
                      ? "Start Learning"
                      : "Continue Learning",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

enum StrategyStatus { inProgress, queued, completed }

class StrategyDataEntity {
  final StrategyStatus status;
  final String title;
  final String description;
  final int index;
  StrategyDataEntity({
    required this.status,
    required this.title,
    required this.description,
    required this.index,
  });
}
