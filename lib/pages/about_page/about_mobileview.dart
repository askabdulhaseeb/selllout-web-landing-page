import 'package:flutter/material.dart';

import '../../app_images.dart';
import '../../widgets/about/about_info_card_list.dart';
import '../../widgets/core/app_title_text.dart';

class AboutMobileview extends StatelessWidget {
  const AboutMobileview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Column(
        children: <Widget>[
          const AppTitleText(title: 'About out app'),
          const SizedBox(height: 20),
          const Text(
            '''With Selllout, you'll get fast, simple and secure buying and selling for free with no hidden charges. You'll be able to message and call for free (on Selllout app) but best of all, you'll be able to sell and buy on our 'Live Bid Auction Feature', exclusively to Selllout.''',
            textAlign: TextAlign.center,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: AspectRatio(
              aspectRatio: 2 / 2,
              child: Image.asset(AppImages.mob0),
            ),
          ),
          const AboutInfoCardList(),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
