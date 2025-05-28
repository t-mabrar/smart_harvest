import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/screens/home/bottom_menu_bar.dart';
import 'package:smart_harvest/screens/home/dashobard/dashboard_screen.dart';
import 'package:smart_harvest/screens/home/harvesting/harvesting_screen.dart';
import 'package:smart_harvest/screens/home/learning/learning_screen.dart';
import 'package:smart_harvest/screens/home/menu/menu_screen.dart';
import 'package:smart_harvest/screens/home/top_app_bar.dart';
import 'package:smart_harvest/screens/widgets/app_background.dart';
import 'package:smart_harvest/screens/widgets/menu_button.dart';
import 'package:smart_harvest/screens/widgets/navigate_pop_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AppMenuType currentType = AppMenuType.dashboard;
  bool showMenuScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          TopAppBar(type: currentType),
                          if (currentType == AppMenuType.dashboard)
                            Expanded(child: DashboardScreen()),
                          if (currentType == AppMenuType.harvesting)
                            Expanded(child: HarvestingScreen()),
                          if (currentType == AppMenuType.learning)
                            Expanded(child: LearningScreen()),
                        ],
                      ),
                    ),
                    BottomMenuBar(
                      currentType: currentType,
                      onTap: (value) {
                        setState(() {
                          showMenuScreen = value == AppMenuType.menu;
                        });
                        if (value != AppMenuType.menu) {
                          setState(() {
                            currentType = value;
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            if (showMenuScreen) ...[
              MenuScreen(
                onClose: () {
                  setState(() {
                    showMenuScreen = false;
                  });
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}
