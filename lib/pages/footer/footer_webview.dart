import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/core/app_title_text.dart';
import '../../widgets/footer/copyright.dart';
import '../../widgets/footer/credits.dart';
import '../privacy_policy_page/privacy_policy_page.dart';

class FooterWebview extends StatelessWidget {
  const FooterWebview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
      color: const Color(0xff232233),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 48),
          SizedBox(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: const <Widget>[
                _Name(),
                _QuickLinks(),
                _NewsLetter(),
              ],
            ),
          ),
          const SizedBox(height: 40),
          const Divider(color: Colors.white30),
          TextButton(
            onPressed: () => GoRouter.of(context).go(PrivacyPage.routePath),
            child: const Text('Privacy Policy'),
          ),
          const SizedBox(height: 20),
          const Copyrights(),
          const SizedBox(height: 10),
          const Credits(),
        ],
      ),
    );
  }
}

class _Name extends StatelessWidget {
  const _Name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text(
          'SelllOut',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Text(
          'Sell Everything and Anything!',
          style: TextStyle(color: Colors.white60),
        ),
      ],
    );
  }
}

class _QuickLinks extends StatelessWidget {
  const _QuickLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'QUICK LINK',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'About',
            style: TextStyle(color: Colors.white),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Feature',
            style: TextStyle(color: Colors.white),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Security',
            style: TextStyle(color: Colors.white),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Help Center',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class _NewsLetter extends StatefulWidget {
  const _NewsLetter({Key? key}) : super(key: key);

  @override
  State<_NewsLetter> createState() => _NewsLetterState();
}

class _NewsLetterState extends State<_NewsLetter> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'QUICK LINK',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            '''Subscribe our newsletter to get our latest update & news''',
            style: TextStyle(color: Colors.white60),
          ),
          const SizedBox(height: 32),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 12),
                hintText: 'Your email address',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send, color: Theme.of(context).primaryColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
