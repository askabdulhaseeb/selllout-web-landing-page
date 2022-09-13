import 'package:flutter/material.dart';

import '../../widgets/core/responsive_layout.dart';
import 'about_webview.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  static const String routePath = '/about';

  @override
  Widget build(BuildContext context) {
    return const SelectionArea(
      child: Scaffold(
        body: ResponsiveLayout(
          mobile: SizedBox(),
          tablet: AboutWebview(),
          desktop: AboutWebview(),
        ),
      ),
    );
  }
}
