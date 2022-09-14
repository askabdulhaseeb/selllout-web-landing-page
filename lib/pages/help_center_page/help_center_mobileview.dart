import 'package:flutter/material.dart';

import '../../widgets/core/app_title_text.dart';

class HelpCenterMobileview extends StatelessWidget {
  const HelpCenterMobileview({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          height: size.height / 2.5,
          width: double.infinity,
          color: Theme.of(context).primaryColor,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(20),
                child: AppTitleText(
                  title: 'Help Center',
                  color: Colors.white,
                ),
              ),
              const Text(
                'Please contact us for any support regarding on how to use the Selllout app. We are always available to help and guide our great customers.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70),
              ),
              const SizedBox(height: 40),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: Colors.amber,
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}
