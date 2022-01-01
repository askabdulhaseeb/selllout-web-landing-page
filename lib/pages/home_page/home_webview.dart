import 'package:flutter/material.dart';

import '../../app_images.dart';
import '../../utilities.dart';
import '../../widgets/home/home_appbar_webview.dart';
import '../../widgets/home/home_contact_buttons.dart';
import '../../widgets/home/home_info_card.dart';

class HomeWebview extends StatelessWidget {
  const HomeWebview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Theme.of(context).primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Column(
        children: <Widget>[
          const HomeContactButtons(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: HomeAppBarWebview(),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: HomeInfoCard(),
                  ),
                ),
                Expanded(child: Image.asset(AppImages.downloadAppMobile))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
