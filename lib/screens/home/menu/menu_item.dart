import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';

class MenuItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final Widget widget;
  const MenuItem({
    super.key,
    required this.iconData,
    required this.title,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => widget));
      },
      contentPadding: EdgeInsets.zero,
      leading: Icon(iconData, color: Colors.white, size: 30.0),
      title: Text(
        title,
        style: context.textTheme.titleLarge!.copyWith(color: Colors.white),
      ),
    );
  }
}
