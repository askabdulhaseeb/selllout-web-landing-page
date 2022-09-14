import 'package:flutter/material.dart';

import '../../utilities.dart';

class AboutInfoCardList extends StatelessWidget {
  const AboutInfoCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        _AboutPropertyCard(
          title: 'Creative design',
          subtitle:
              'We made sure to create the perfect design to be beautiful, simple and approachable.',
        ),
        _AboutPropertyCard(
          title: 'easy to use',
          subtitle:
              'We wanted to make it easy for all ages to be able to use our app and explore all the great features we implemented.',
        ),
        _AboutPropertyCard(
          title: 'Best user Experience',
          subtitle:
              'We guarantee the best user experience and we are always improving daily to make sure everything flows perfectly for our users.',
        )
      ],
    );
  }
}

class _AboutPropertyCard extends StatelessWidget {
  const _AboutPropertyCard({
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 8,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: <BoxShadow>[Utilities.shadow(color: Colors.black12)],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.check_circle,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  subtitle,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
