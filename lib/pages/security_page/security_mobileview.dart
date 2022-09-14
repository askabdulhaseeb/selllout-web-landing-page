import 'package:flutter/material.dart';

import '../../app_images.dart';
import '../../widgets/core/app_title_text.dart';
import '../../widgets/security/mobile_scroller.dart';

class SecurityMobileview extends StatelessWidget {
  const SecurityMobileview({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 30),
          const AppTitleText(title: 'security at selllout'),
          const SizedBox(height: 20),
          const Text(
            'At Selllout, we take security very seriously and we will continue to protect our users at all times with their data and customer experience. Selllout is available for all devices including Phone, Tablet and Web.',
            textAlign: TextAlign.center,
          ),
          SecurityMobileScroller(
            viewportFraction: 0.6,
            list: <String>[
              AppImages.mob0,
              AppImages.mob1,
              AppImages.mob2,
              AppImages.mob3,
              AppImages.mob4,
            ],
          ),
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.all(16),
            child: AppTitleText(
                title: 'Checkout Our App Interface Look On Web and Tablet'),
          ),
          const SizedBox(height: 30),
          SecurityMobileScroller(
            viewportFraction: 1,
            list: <String>[
              AppImages.tab0,
              AppImages.tab1,
              AppImages.tab4,
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
    ;
  }
}
