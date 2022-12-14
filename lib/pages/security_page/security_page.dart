import 'package:flutter/material.dart';

import '../../widgets/core/responsive_layout.dart';
import 'security_mobileview.dart';
import 'security_website.dart';

class SecurityPage extends StatelessWidget {
  const SecurityPage({super.key});
  static const String routePage = '/security';

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: SecurityMobileview(),
      tablet: SecurityWebview(),
      desktop: SecurityWebview(),
    );
  }
}
