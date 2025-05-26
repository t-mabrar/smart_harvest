import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/screens/widgets/app_background.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: _currentPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(height: 70.0),
              Image.asset("assets/images/logo.png", scale: 1.5),
              Expanded(
                child: SizedBox(
                  height: context.height * 0.7,
                  child: PageView(
                    // physics: CarouselScrollPhysics(),
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    controller: _pageController,
                    children: [
                      OnBoardingPage(
                        image:
                            "assets/images/onboarding/simplified_tax_saving.png",
                        title: "Simplified Tax Saving",
                        description:
                            "Effortlessly uncover hidden tax savings within your investment portfolio. Our innovative tools provide immediate insights, allowing you to make informed decisions and maximize your tax benefits.",
                      ),
                      OnBoardingPage(
                        image: "assets/images/onboarding/tax_reward.png",
                        title: "Reap Maximum Tax Reward",
                        description:
                            "Gain a deeper understanding of the tax implications associated with your investment portfolio. Discover untapped opportunities to minimize your tax liability and maximize your after-tax returns.",
                      ),
                      OnBoardingPage(
                        image: "assets/images/onboarding/tax_savings.png",
                        title: "Learn Tax Saving Tips",
                        description:
                            "Master the art of tax planning with our straightforward & engaging lessons. Our user-friendly approach simplifies complex tax concepts, empowering you to optimize your tax strategy and boost your financial well-being.",
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 20.0,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder:
                            (context, index) => Container(
                              width: 12.0,
                              height: 12.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    _currentPage == index
                                        ? context.primaryColor
                                        : Colors.grey,
                              ),
                            ),
                        separatorBuilder: (context, _) => SizedBox(width: 10.0),
                        itemCount: 3,
                      ),
                    ),
                  ),
                  Expanded(
                    child: AppButton(
                      elevation: 0.0,
                      isExpanded: true,
                      title: _currentPage == 2 ? "Sign In" : "Next",
                      onPressed: () {
                        if (_currentPage < 2) {
                          _pageController.nextPage(
                            duration: Duration(seconds: 1),
                            curve: Curves.ease,
                          );
                        } else {}
                      },
                      borderRadius: 50.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        Text(title, style: context.textTheme.titleLarge),
        SizedBox(height: 30.0),
        Text(
          description,
          textAlign: TextAlign.center,
          style: context.textTheme.bodySmall,
        ),
      ],
    );
  }
}
