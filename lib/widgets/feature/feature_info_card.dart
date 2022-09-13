import 'package:flutter/material.dart';

class FeatureInfoCard extends StatelessWidget {
  const FeatureInfoCard({
    required this.icon,
    required this.title,
    required this.detail,
    this.textAlign,
    this.crossAxisAlignment,
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final String detail;
  final TextAlign? textAlign;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        children: <Widget>[
          Icon(icon, color: Colors.white, size: 32),
          const SizedBox(height: 10),
          Text(
            title.toUpperCase(),
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            detail,
            style: const TextStyle(color: Colors.white),
            textAlign: textAlign,
          ),
        ],
      ),
    );
  }
}
