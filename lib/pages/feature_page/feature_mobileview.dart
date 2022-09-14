import 'package:flutter/material.dart';

import '../../app_images.dart';
import '../../widgets/core/app_title_text.dart';
import '../../widgets/feature/feature_info_card.dart';

class FeatureMobileview extends StatelessWidget {
  const FeatureMobileview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      padding: const EdgeInsets.symmetric(vertical: 42, horizontal: 16),
      child: Column(
        children: <Widget>[
          const AppTitleText(title: 'App features', color: Colors.white),
          const Text(
            'Selllout is your one stop app for everything to start building your own business or maybe look for a bargain. The choice is yours!',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white54),
          ),
          const SizedBox(height: 30),
          const FeatureInfoCard(
            icon: Icons.chat,
            title: 'Live Feature',
            textAlign: TextAlign.center,
            detail:
                'Exclusive to Selllout, we have introduced the world to the first Live Bid Auction feature where you can show and see the product you want to buy or sell!',
          ),
          const SizedBox(height: 40),
          const FeatureInfoCard(
            icon: Icons.card_giftcard,
            title: 'Free Chat + Video',
            textAlign: TextAlign.center,
            detail:
                'Message, Call or Video chat to your potential buyers or sellers!',
          ),
          const SizedBox(height: 40),
          const FeatureInfoCard(
            icon: Icons.control_point_duplicate_outlined,
            title: 'Simple U/I Design',
            textAlign: TextAlign.center,
            detail:
                'We have made Selllout easy and simple to use for all ages and we will continue to make improvements for the best customer experience!',
          ),
          const SizedBox(height: 40),
          AspectRatio(aspectRatio: 2 / 2, child: Image.asset(AppImages.mob1)),
          const SizedBox(height: 40),
          const FeatureInfoCard(
            icon: Icons.phone_iphone_rounded,
            title: 'Build Your Business',
            textAlign: TextAlign.center,
            detail:
                'Start building your own business for free and gain a following of great customers who will support you!',
          ),
          const SizedBox(height: 40),
          const FeatureInfoCard(
            icon: Icons.qr_code_scanner_outlined,
            title: 'Selllout Marketplace',
            textAlign: TextAlign.center,
            detail:
                'Explore the Selllout Marketplace and find everything you want to buy!',
          ),
          const SizedBox(height: 40),
          const FeatureInfoCard(
            icon: Icons.mic,
            title: '24/7 support by real pepole',
            textAlign: TextAlign.center,
            detail: 'We will respond to all emails and calls within 24 hours.',
          ),
        ],
      ),
    );
  }
}
