import 'package:flutter/material.dart';

import '../../app_images.dart';
import '../../widgets/core/app_title_text.dart';
import '../../widgets/download/download_button_section.dart';

class DownloadWebview extends StatelessWidget {
  const DownloadWebview({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(64),
      child: SizedBox(
        height: 400,
        child: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const AppTitleText(title: 'Download App Now'),
                  const Text(
                    'Available to download on all Apple and Android devices.',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    width: 300,
                    child: Wrap(
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                          width: 110,
                          child: Image.asset(AppImages.playstore),
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          height: 48,
                          width: 100,
                          child: Image.asset(AppImages.appstore),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const DownloadButtonSection(),
                ],
              ),
              SizedBox(
                height: 400,
                width: size.width / 2 - 200,
                child: Image.asset(AppImages.downloadAppMobile),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
