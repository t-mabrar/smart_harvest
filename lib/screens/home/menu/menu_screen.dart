import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/screens/connect_portfolio/connect_your_portfolio.dart';
import 'package:smart_harvest/screens/home/menu/about_us_screen.dart';
import 'package:smart_harvest/screens/home/menu/menu_item.dart';
import 'package:smart_harvest/screens/home/menu/profile_update.dart';
import 'package:smart_harvest/screens/widgets/designer_details.dart';
import 'package:smart_harvest/screens/widgets/navigate_pop_button.dart';
import 'package:smart_harvest/screens/widgets/pre_title_and_title.dart';

class MenuScreen extends StatefulWidget {
  final void Function() onClose;
  const MenuScreen({super.key, required this.onClose});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
        child: ColoredBox(
          color: Color(0xFF0A0300).withAlpha(210),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ScreenTitle("Menu"),
                        SizedBox(height: 30.0),
                        Center(
                          child: Column(
                            children: [
                              Image.asset("assets/images/profile_image.png"),
                              Text(
                                "Mohammed Abrar",
                                style: context.textTheme.titleMedium,
                              ),
                              Text(
                                "mabrar.site",
                                style: context.textTheme.bodyLarge!.copyWith(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.0),
                        MenuItem(
                          iconData: Icons.person,
                          title: "My Account",
                          widget: ProfileUpdate(),
                        ),
                        SizedBox(height: 10.0),
                        MenuItem(
                          iconData: Icons.published_with_changes_rounded,
                          title: "Switch Portfolio",
                          widget: ConnectYourPortfolio(isSwitch: true),
                        ),
                        SizedBox(height: 10.0),
                        MenuItem(
                          iconData: Icons.help,
                          title: "Need Help",
                          widget: Container(),
                        ),
                        SizedBox(height: 10.0),
                        MenuItem(
                          iconData: Icons.star_half_rounded,
                          title: "Rate Us",
                          widget: Container(),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 10.0,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              spacing: 15.0,
                              children: [
                                AppButton.link(
                                  title: "About Us",
                                  fontColor: Colors.white,
                                  fontSize: 20.0,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => AboutUsScreen(),
                                      ),
                                    );
                                  },
                                  hideUnderLine: true,
                                ),
                                Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                                AppButton.link(
                                  title: "Legal & Regulatory",
                                  fontColor: Colors.white,
                                  fontSize: 20.0,
                                  onPressed: () {},
                                  hideUnderLine: true,
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: DesignerDetails(showDeveloper: false),
                            ),
                          ],
                        ),
                      ),
                      NavigatePopButton(onTap: widget.onClose),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
