import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/screens/home/section_design.dart';

class LearningScreen extends StatefulWidget {
  const LearningScreen({super.key});

  @override
  State<LearningScreen> createState() => _LearningScreenState();
}

class _LearningScreenState extends State<LearningScreen> {
  List<Map<String, dynamic>> learningList = [
    {
      "image": "assets/images/tax_harvesting.png",
      "title": "What is Tax Harvesting?",
      "status": true,
      "description":
          "Tax harvesting is the practice of selling investments that have declined in value to realize a loss. These losses can be used to offset capital gains from other investments, reducing taxable income.",
    },
    {
      "image": "assets/images/tax_harvesting_work.png",
      "title": "How Does Tax Harvesting Work?",
      "status": false,
      "description":
          "The process of identifying investments with losses, selling them strategically, and reinvesting to maintain a balanced portfolio while complying with tax rules.",
    },
    {
      "image": "assets/images/realized_vs_unrealized_gains.png",
      "title": "Realized vs Unrealized Gains",
      "status": false,
      "description":
          "The process of identifying investments with losses, selling them strategically, and reinvesting to maintain a balanced portfolio while complying with tax rules.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 15.0,
        children: [
          SizedBox(height: 5.0),
          SectionDesign(
            child: Row(
              spacing: 5.0,
              children: [
                Image.asset("assets/gifs/save_money.gif", scale: 5),
                Flexible(
                  child: Text(
                    "Learn how to optimize your savings through strategic planning and actions.",
                    style: context.textTheme.labelLarge,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 16.0,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Flexible(
                child: AppButton(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  border: Border.all(color: context.primaryColor),
                  color: context.primaryColor.withAlpha(50),
                  borderRadius: 50.0,
                  buttonFullWidth: true,
                  title: "All",
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 15.0),
              Flexible(
                child: AppButton(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  border: Border.all(color: Colors.white),
                  color: Colors.transparent,
                  borderRadius: 50.0,
                  buttonFullWidth: true,
                  title: "In Process",
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 15.0),
              Flexible(
                child: AppButton(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  border: Border.all(color: Colors.white),
                  color: Colors.transparent,
                  borderRadius: 50.0,
                  buttonFullWidth: true,
                  title: "Completed",
                  onPressed: () {},
                ),
              ),
            ],
          ),
          ...learningList.map(
            (eachLesson) => SectionDesign(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(eachLesson['image'].toString()),
                  SizedBox(height: 10.0),
                  Text(
                    eachLesson['title'],
                    style: context.textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    eachLesson['description'],
                    style: context.textTheme.bodySmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 10.0),
                  AppButton(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    title:
                        eachLesson['status'] as bool
                            ? "Continue Learning"
                            : "Start Learning",
                    onPressed: () {},
                    buttonFullWidth: true,
                    borderRadius: 50.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
