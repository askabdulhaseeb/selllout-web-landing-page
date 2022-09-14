import 'package:flutter/material.dart';

import '../../app_images.dart';
import '../../widgets/home/home_appbar_mobile.dart';
import '../../widgets/home/home_contact_buttons.dart';
import '../../widgets/home/home_info_card.dart';

class HomeMobileview extends StatelessWidget {
  const HomeMobileview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 16),
          const HomeContactButtons(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: HomeAppBarMobileview(),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.5,
            child: const HomeInfoCard(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: AspectRatio(
              aspectRatio: 2 / 2,
              child: Image.asset(AppImages.mob0),
            ),
          ),
        ],
      ),
    );
  }
}
