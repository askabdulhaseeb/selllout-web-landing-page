import 'package:flutter/material.dart';

import '../../widgets/home/home_appbar_webview.dart';
import '../home_page/home_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Column(
              children: const <Widget>[
                _ContactButton(),
                HomeAppBarWebview(),
                Expanded(child: HomePage())
              ],
            ),
          ),
        ),
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
