import 'package:flutter/material.dart';

import '../../widgets/core/app_title_text.dart';
import '../../widgets/footer/copyright.dart';
import '../../widgets/footer/credits.dart';
import '../../widgets/footer/privacy_support_buttons.dart';

class FooterMobileview extends StatelessWidget {
  const FooterMobileview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
      color: const Color(0xff232233),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          SizedBox(height: 48),
          _Name(),
          SizedBox(height: 40),
          _QuickLinks(),
          SizedBox(height: 40),
          _NewsLetter(),
          SizedBox(height: 40),
          PrivacySupportButtons(),
          SizedBox(height: 20),
          Divider(color: Colors.white30),
          SizedBox(height: 20),
          Center(child: Copyrights()),
          SizedBox(height: 10),
          Center(child: Credits()),
          SizedBox(height: 10),
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
