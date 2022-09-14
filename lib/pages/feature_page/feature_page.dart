import 'package:flutter/material.dart';

import '../../widgets/core/responsive_layout.dart';
import 'feature_mobileview.dart';
import 'feature_webview.dart';

class FeaturePage extends StatelessWidget {
  const FeaturePage({super.key});
  static const String routePath = '/features';

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: FeatureMobileview(),
      tablet: FeatureWebview(),
      desktop: FeatureWebview(),
    );
  }
}
