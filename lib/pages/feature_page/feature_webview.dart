import 'package:flutter/material.dart';

import '../../app_images.dart';
import '../../widgets/core/app_title_text.dart';
import '../../widgets/feature/feature_info_card.dart';

class FeatureWebview extends StatelessWidget {
  const FeatureWebview({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const TextStyle simpleText = TextStyle(color: Colors.white);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30),
            const AppTitleText(title: 'App features', color: Colors.white),
            SizedBox(
              width: size.width / 2,
              child: const Text(
                'Selllout is your one stop app for everything to start building your own business or maybe look for a bargain. The choice is yours!',
                textAlign: TextAlign.center,
                style: simpleText,
              ),
            ),
            const SizedBox(height: 30),
            const FeatureInfoCard(
              icon: Icons.chat,
              title: 'Live Feature',
              textAlign: TextAlign.center,
              detail:
                  'Exclusive to Selllout, we have introduced the world to the first Live Bid Auction feature where you can show and see the product you want to buy or sell!',
            ),
            const SizedBox(height: 20),
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: size.height / 1.5,
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          FeatureInfoCard(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            icon: Icons.card_giftcard,
                            title: 'Free Chat + Video',
                            textAlign: TextAlign.end,
                            detail:
                                'Message, Call or Video chat to your potential buyers or sellers!',
                          ),
                          FeatureInfoCard(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            icon: Icons.control_point_duplicate_outlined,
                            title: 'Simple U/I Design',
                            textAlign: TextAlign.end,
                            detail:
                                'We have made Selllout easy and simple to use for all ages and we will continue to make improvements for the best customer experience!',
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child:
                            Image.asset(AppImages.mob1, fit: BoxFit.fitHeight),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          FeatureInfoCard(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            icon: Icons.phone_iphone_rounded,
                            title: 'Build Your Business',
                            detail:
                                'Start building your own business for free and gain a following of great customers who will support you!',
                          ),
                          FeatureInfoCard(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            icon: Icons.qr_code_scanner_outlined,
                            title: 'Selllout Marketplace',
                            detail:
                                'Explore the Selllout Marketplace and find everything you want to buy!',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const FeatureInfoCard(
              icon: Icons.mic,
              title: '24/7 support by real pepole',
              textAlign: TextAlign.center,
              detail:
                  'We will respond to all emails and calls within 24 hours.',
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
