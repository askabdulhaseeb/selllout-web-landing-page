import 'package:flutter/material.dart';

class DownloadButtonSection extends StatelessWidget {
  const DownloadButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const <Widget>[
        _Button(icon: Icons.download, title: 'download'),
        _Button(icon: Icons.thumb_up, title: 'Like'),
        _Button(icon: Icons.star, title: 'Rate'),
      ],
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({required this.icon, required this.title, Key? key})
      : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 16),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          Icon(icon, color: Colors.white),
          const SizedBox(height: 6),
          Text(
            title.toUpperCase(),
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
