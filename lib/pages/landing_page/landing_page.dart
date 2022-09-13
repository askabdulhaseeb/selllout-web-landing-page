import 'package:flutter/material.dart';

import '../../widgets/home/home_appbar_webview.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          children: <Widget>[
            const _ContactButton(),
            const HomeAppBarWebview(),
          ],
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
