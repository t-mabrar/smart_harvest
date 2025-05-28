import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:flutter_svg/svg.dart';

class NavigatePopButton extends StatelessWidget {
  final void Function()? onTap;
  const NavigatePopButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
          onTap ??
          () {
            Navigator.of(context).pop();
          },
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 25.0,
              spreadRadius: -8.0,
            ),
          ],
          shape: BoxShape.circle,
          color: context.primaryColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: SvgPicture.asset("assets/svgs/clear.svg", width: 35.0),
        ),
      ),
    );
  }
}
