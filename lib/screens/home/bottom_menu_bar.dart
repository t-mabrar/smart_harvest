import 'package:flutter/material.dart';
import 'package:smart_harvest/screens/widgets/menu_button.dart';

class BottomMenuBar extends StatefulWidget {
  final AppMenuType currentType;
  final ValueChanged<AppMenuType> onTap;
  const BottomMenuBar({
    super.key,
    required this.currentType,
    required this.onTap,
  });

  @override
  State<BottomMenuBar> createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  late AppMenuType currentType;
  @override
  void initState() {
    super.initState();
    currentType = widget.currentType;
  }

  @override
  void didUpdateWidget(covariant BottomMenuBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.currentType != widget.currentType) {
      setState(() {
        currentType = widget.currentType;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Row(
          children: [
            Expanded(
              child: Row(
                spacing: 10.0,
                children: [
                  AppMenuButton(
                    svgPath: "assets/svgs/app_white_favicon.svg",
                    type: AppMenuType.dashboard,
                    selectedType: currentType,
                    onTap: () {
                      if (currentType != AppMenuType.dashboard) {
                        setState(() {
                          currentType = AppMenuType.dashboard;
                        });
                        widget.onTap(currentType);
                      }
                    },
                  ),
                  AppMenuButton(
                    svgPath: "assets/svgs/harvesting.svg",
                    type: AppMenuType.harvesting,
                    selectedType: currentType,
                    onTap: () {
                      if (currentType != AppMenuType.harvesting) {
                        setState(() {
                          currentType = AppMenuType.harvesting;
                        });
                        widget.onTap(currentType);
                      }
                    },
                  ),
                  AppMenuButton(
                    svgPath: "assets/svgs/learning.svg",
                    type: AppMenuType.learning,
                    selectedType: currentType,
                    onTap: () {
                      if (currentType != AppMenuType.learning) {
                        setState(() {
                          currentType = AppMenuType.learning;
                        });
                        widget.onTap(currentType);
                      }
                    },
                  ),
                ],
              ),
            ),
            AppMenuButton(
              svgPath: "assets/svgs/menu.svg",
              type: AppMenuType.menu,
              selectedType: currentType,
              onTap: () {
                widget.onTap(AppMenuType.menu);
              },
            ),
          ],
        ),
      ),
    );
  }
}
