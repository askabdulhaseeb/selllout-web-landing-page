import 'package:flutter/material.dart';

import '../../app_images.dart';
import '../../utilities.dart';

class HomeWebview extends StatelessWidget {
  const HomeWebview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    margin: const EdgeInsets.only(left: 40),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white70, width: 16),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    margin:
                        const EdgeInsets.only(right: 34, top: 34, bottom: 34),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: <BoxShadow>[
                        Utilities.shadow(color: Colors.black38)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: double.infinity,
                              child: FittedBox(
                                child: Text(
                                  'SELL EVERYTHING\nAND ANTHING!',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              '''Selllout is the new social media marketplace where there are no limits on what you can buy and sell.\nYou can buy and sell from your friends and other members in the community and best of all, it’s free and you keep 100% of your profits as you should.''',
                              maxLines: 6,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 30),
                            const Text(
                              'DOWNLOAD APP NOW',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Wrap(
                              children: <Widget>[
                                SizedBox(
                                  height: 50,
                                  child: Image.asset(AppImages.playstore),
                                ),
                                const SizedBox(width: 10),
                                SizedBox(
                                  height: 52,
                                  child: Image.asset(AppImages.appstore),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(child: SizedBox())
        ],
      ),
    );
  }
}
