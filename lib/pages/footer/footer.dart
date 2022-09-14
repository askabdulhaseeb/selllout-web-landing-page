import 'package:flutter/material.dart';

import '../../widgets/core/responsive_layout.dart';
import 'footer_mobileview.dart';
import 'footer_webview.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: FooterMobileview(),
      tablet: FooterWebview(),
      desktop: FooterWebview(),
    );
  }
}
