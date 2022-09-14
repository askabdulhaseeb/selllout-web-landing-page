import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Credits extends StatelessWidget {
  const Credits({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://devmarkaz.com');
    return RichText(
      text: TextSpan(
        style: const TextStyle(color: Colors.white54),
        children: <TextSpan>[
          const TextSpan(text: ' Developed by '),
          TextSpan(
            text: ' Dev Markaz',
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                if (!await launchUrl(_url)) {
                  throw 'Could not launch $_url';
                }
              },
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
