import 'package:flutter/material.dart';

import '../../widgets/core/responsive_layout.dart';
import 'download_mobileview.dart';
import 'download_webview.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: DownloadMobileview(),
      tablet: DownloadWebview(),
      desktop: DownloadWebview(),
    );
  }
}
