import 'package:flutter/material.dart';

import '../../app_images.dart';
import '../../widgets/about/about_property_card.dart';
import '../../widgets/core/app_title_text.dart';

class AboutWebview extends StatelessWidget {
  const AboutWebview({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 30),
              const AppTitleText(title: 'About out app'),
              const SizedBox(height: 20),
              SizedBox(
                width: size.width / 2,
                child: const Text(
                  '''With Selllout, you'll get fast, simple and secure buying and selling for free with no hidden charges. You'll be able to message and call for free (on Selllout app) but best of all, you'll be able to sell and buy on our 'Live Bid Auction Feature', exclusively to Selllout.''',
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Image.asset(AppImages.downloadAppMobile),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: const <Widget>[
                        AboutPropertyCard(
                          title: 'Creative design',
                          subtitle:
                              'We made sure to create the perfect design to be beautiful, simple and approachable.',
                        ),
                        AboutPropertyCard(
                          title: 'easy to use',
                          subtitle:
                              'We wanted to make it easy for all ages to be able to use our app and explore all the great features we implemented.',
                        ),
                        AboutPropertyCard(
                          title: 'Best user Experience',
                          subtitle:
                              'We guarantee the best user experience and we are always improving daily to make sure everything flows perfectly for our users.',
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
