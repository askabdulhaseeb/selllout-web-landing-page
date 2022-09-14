import 'package:flutter/material.dart';

import '../../app_images.dart';
import '../../widgets/core/app_title_text.dart';
import '../../widgets/download/download_button_section.dart';

class DownloadMobileview extends StatelessWidget {
  const DownloadMobileview({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const AppTitleText(title: 'Download App Now'),
          const SizedBox(height: 20),
          const Text(
            'Available to download on all Apple and Android devices.',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 40),
          Row(
            children: <Widget>[
              SizedBox(
                height: 50,
                width: width / 3,
                child: Image.asset(AppImages.playstore),
              ),
              SizedBox(
                height: 48,
                width: width / 3,
                child: Image.asset(AppImages.appstore),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const DownloadButtonSection(),
          const SizedBox(height: 20),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.asset(AppImages.downloadAppMobile),
          )
        ],
      ),
    );
  }
}
