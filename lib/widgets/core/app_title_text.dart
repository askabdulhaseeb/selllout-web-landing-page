import 'package:flutter/material.dart';

class AppTitleText extends StatelessWidget {
  const AppTitleText({
    required this.title,
    this.color,
    Key? key,
  }) : super(key: key);
  final Color? color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title.toUpperCase(),
      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32, color: color),
    );
  }
}
