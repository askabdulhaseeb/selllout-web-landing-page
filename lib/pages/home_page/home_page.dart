import 'package:flutter/material.dart';

import '../../widgets/core/responsive_layout.dart';
import 'home_mobileview.dart';
import 'home_webview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String routePath = '/home';

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: HomeMobileview(),
      tablet: HomeWebview(),
      desktop: HomeWebview(),
    );
  }
}
