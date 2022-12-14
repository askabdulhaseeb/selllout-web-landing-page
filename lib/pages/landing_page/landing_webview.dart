import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../providers/home_app_bar_provider.dart';
import '../about_page/about_page.dart';
import '../home_page/home_page.dart';

class LandingWebview extends StatelessWidget {
  const LandingWebview({super.key});
  static const List<Widget> pages = <Widget>[
    HomePage(),
    AboutPage(),
    // FeaturePage(),
    // DownloadPage(),
    // SecurityPage(),
    // Footer(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeAppBarProvider>(
        builder: (BuildContext context, HomeAppBarProvider homePro, _) {
          return ScrollablePositionedList.builder(
            itemCount: pages.length,
            itemBuilder: (BuildContext context, int index) => pages[index],
            // itemScrollController: homePro.itemScrollController,
            // itemPositionsListener: homePro.itemPositionsListener,
          );
        },
      ),
    );
  }
}
