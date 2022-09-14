import 'package:flutter/material.dart';

import '../../app_images.dart';
import '../../utilities.dart';
import '../../widgets/home/home_appbar_webview.dart';

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
          const _ContactButton(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: HomeAppBarWebview(),
          ),
          Expanded(
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
                            border:
                                Border.all(color: Colors.white70, width: 16),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          margin: const EdgeInsets.only(
                              right: 34, top: 34, bottom: 34),
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
                Expanded(child: Image.asset(AppImages.downloadAppMobile))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ContactButton extends StatelessWidget {
  const _ContactButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.mail, color: Colors.white),
          label: const Text(
            'support@selllout.com',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(width: 10),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.phone, color: Colors.white),
          label: const Text(
            '+44 77420 95536',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
