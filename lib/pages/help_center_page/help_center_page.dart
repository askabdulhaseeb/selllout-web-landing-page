import 'package:flutter/material.dart';

import '../../widgets/core/responsive_layout.dart';
import 'help_center_webview.dart';

class HelpCenterPage extends StatelessWidget {
  const HelpCenterPage({super.key});
  static const String routePage = '/help-center';

  @override
  Widget build(BuildContext context) {
    return  const ResponsiveLayout(
        mobile: SizedBox(),
        tablet: HelpCenterWebview(),
        desktop: HelpCenterWebview(),
    );
  }
}
