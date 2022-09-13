import 'package:flutter/material.dart';

class Utilities {
  static BoxShadow shadow({Color color = Colors.black12}) => const BoxShadow(
        color: Colors.black12,
        blurRadius: 4,
        offset: Offset(0, 0),
        spreadRadius: 4,
      );
}
