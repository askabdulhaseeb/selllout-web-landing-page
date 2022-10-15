import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../pages/privacy_policy_page/privacy_policy_page.dart';
import '../../pages/support_page/supoort_page.dart';

class PrivacySupportButtons extends StatelessWidget {
  const PrivacySupportButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
    );
    return RichText(
      text: TextSpan(
        style: textStyle,
        children: <TextSpan>[
          TextSpan(
            text: 'Privacy Policy',
            recognizer: TapGestureRecognizer()
              ..onTap = () => GoRouter.of(context).go(PrivacyPage.routePath),
          ),
          const TextSpan(
            text: '      |      ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
          TextSpan(
            text: 'Supports',
            recognizer: TapGestureRecognizer()
              ..onTap = () => GoRouter.of(context).go(SupportPage.routePath),
          ),
        ],
      ),
    );
  }
}
