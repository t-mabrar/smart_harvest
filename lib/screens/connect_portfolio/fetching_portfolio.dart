import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_harvest/screens/widgets/pre_title_and_title.dart';

class FetchingPortfolio extends StatefulWidget {
  const FetchingPortfolio({super.key});

  @override
  State<FetchingPortfolio> createState() => FetchingPortfolioState();
}

class FetchingPortfolioState extends State<FetchingPortfolio> {
  bool linked = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        linked = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Color(0xFF331201).withAlpha(210),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child:
              linked
                  ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.white,
                          size: 120.0,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        "Portfolio Link Successfully!",
                        style: context.textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "We've successfully integrated your Dhan portfolio, enabling you to identify potential tax savings.",
                        style: context.textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 50.0),
                      Text(
                        "We'll now analyze your portfolio to identify tax-saving opportunities that are right for you.",
                        textAlign: TextAlign.center,
                        style: context.textTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      AppButton(
                        borderRadius: 50.0,
                        title: "Go to Dashboard",
                        onPressed: () {},
                        buttonFullWidth: true,
                      ),
                      SizedBox(height: 10.0),
                    ],
                  )
                  : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30.0),
                      ScreenPreTitle("Connect your DHAN Portfolio"),
                      ScreenTitle("Fetching\nYour Portfolio"),
                      Expanded(
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/svgs/fetching_portfolio.svg",
                          ),
                        ),
                      ),
                      Text(
                        "We're carefully reviewing your portfolio. Please allow a short time for processing.",
                        textAlign: TextAlign.center,
                        style: context.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 25.0),
                    ],
                  ),
        ),
      ),
    );
  }
}
