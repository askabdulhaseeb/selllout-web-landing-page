import 'package:flutter/material.dart';

import '../../widgets/core/responsive_layout.dart';
import 'feature_webview.dart';

class FeaturePage extends StatelessWidget {
  const FeaturePage({super.key});
  static const String routePath = '/features';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Theme.of(context).primaryColor,
      child: const ResponsiveLayout(
        mobile: SizedBox(),
        tablet: FeatureWebview(),
        desktop: FeatureWebview(),
      ),
    );
  }
}
