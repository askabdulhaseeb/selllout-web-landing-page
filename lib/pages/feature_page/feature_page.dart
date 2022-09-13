import 'package:flutter/material.dart';

import '../../widgets/core/responsive_layout.dart';
import 'feature_webview.dart';

class FeaturePage extends StatelessWidget {
  const FeaturePage({super.key});
  static const String routePath = '/features';

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: const ResponsiveLayout(
            mobile: SizedBox(),
            tablet: FeatureWebview(),
            desktop: FeatureWebview(),
          ),
        ),
      ),
    );
  }
}
