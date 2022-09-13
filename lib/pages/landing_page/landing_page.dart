import 'package:flutter/material.dart';

import '../../widgets/core/responsive_layout.dart';
import 'landing_webview.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});
  static const String routePath = '/';

  @override
  Widget build(BuildContext context) {
    return const SelectionArea(
        child: ResponsiveLayout(
      mobile: SizedBox(),
      tablet: SizedBox(),
      desktop: LandingWebview(),
    ));
  }
}
