import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:flutter_svg/svg.dart';

enum AppMenuType { menu, dashboard, harvesting, learning }

class AppMenuButton extends StatefulWidget {
  final String svgPath;
  final AppMenuType type;
  final AppMenuType selectedType;
  final void Function() onTap;
  const AppMenuButton({
    super.key,
    required this.svgPath,
    required this.type,
    required this.selectedType,
    required this.onTap,
  });

  @override
  State<AppMenuButton> createState() => AppMenuButtonState();
}

class AppMenuButtonState extends State<AppMenuButton> {
  final buttonBGColor = Color(0xFF5B5B5B);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 20.0,
              spreadRadius: -12.0,
            ),
            BoxShadow(color: buttonBGColor),
          ],
          shape: BoxShape.circle,
          color:
              widget.type == AppMenuType.menu
                  ? buttonBGColor
                  : widget.type == widget.selectedType
                  ? context.primaryColor
                  : buttonBGColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: SvgPicture.asset(widget.svgPath, width: 35.0),
        ),
      ),
    );
  }
}
