import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';
import 'package:smart_harvest/core/extensions.dart';
import 'package:smart_harvest/screens/widgets/menu_button.dart';

class TopAppBar extends StatelessWidget {
  final AppMenuType type;
  const TopAppBar({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            type.name.toTitleCase,
            style: context.textTheme.titleLarge!.copyWith(color: Colors.white),
          ),
        ),
        SizedBox(
          width: 55.0,
          height: 55.0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF461801), context.sectionBgColor],
              ),
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xFF461801)),
            ),
            child: Center(
              child: Badge(
                child: Icon(Icons.notifications_outlined, color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(width: 20.0),
        SizedBox(
          width: 55.0,
          height: 55.0,
          child: Image.asset("assets/images/small_profile_image.png"),
        ),
      ],
    );
  }
}
