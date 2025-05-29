import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/core/extensions.dart';
import 'package:smart_harvest/screens/home/section_design.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GainAndLoss extends StatelessWidget {
  const GainAndLoss({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionDesign(
      child: Column(
        spacing: 10.0,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Gain Value",
                      style: context.textTheme.bodySmall,
                    ),
                    Text(
                      "4,12,112".inRupee,
                      style: context.textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Loss Value",
                      style: context.textTheme.bodySmall,
                    ),
                    Text(
                      "22,112".inRupee,
                      style: context.textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          GainLossRadiaBar(),
          AppButton(
            title: "View your Investments",
            onPressed: () {},
            borderRadius: 50.0,
            buttonFullWidth: true,
          ),
        ],
      ),
    );
  }
}

class GainLossRadiaBar extends StatelessWidget {
  const GainLossRadiaBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: SfCircularChart(
        series: <CircularSeries>[
          RadialBarSeries<ChartData, String>(
            dataSource: [
              ChartData('Stocks', 40, Color(0xFF16FF5D)),
              ChartData('Funds', 75, Color(0xFF5D16FF)),
              ChartData('Bonds', 90, context.primaryColor),
            ],
            cornerStyle: CornerStyle.bothCurve,
            maximumValue: 100,
            pointColorMapper: (data, index) => data.color,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            trackColor: Color(0xFF5B5B5B),
            trackBorderColor: Colors.transparent,
            gap: '20%',
            innerRadius: '45%',
            radius: '110%',
          ),
        ],
        legend: Legend(
          isVisible: true,
          overflowMode: LegendItemOverflowMode.wrap,
          position: LegendPosition.right,
          itemPadding: 5.0,
          legendItemBuilder: (title, series, __, index) {
            final eachData = series as RadialBarSeries<ChartData, String>;
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 8.0,
                      height: 8.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: eachData.dataSource![index].color,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Text(title, style: context.textTheme.bodySmall),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Text(
                    "${eachData.dataSource![index].y.toString()}%",
                    style: context.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
