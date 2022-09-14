import 'package:flutter/material.dart';

class Copyrights extends StatelessWidget {
  const Copyrights({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: TextStyle(color: Colors.white),
        children: <TextSpan>[
          TextSpan(text: ' © Copyright 2022 '),
          TextSpan(
            text: ' Selllout.',
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5),
          ),
          TextSpan(text: ' All right reserved'),
        ],
      ),
    );
  }
}
