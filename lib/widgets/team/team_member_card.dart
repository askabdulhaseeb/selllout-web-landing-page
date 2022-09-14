import 'package:flutter/material.dart';

import '../../utilities.dart';

class TeamMemberCard extends StatelessWidget {
  const TeamMemberCard({
    required this.imagePath,
    required this.name,
    required this.possition,
    required this.about,
    required this.mail,
    Key? key,
  }) : super(key: key);
  final String imagePath;
  final String name;
  final String possition;
  final String about;
  final String mail;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: <BoxShadow>[Utilities.shadow()],
      ),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 70,
            backgroundColor: Theme.of(context).primaryColor,
            child: CircleAvatar(
              radius: 68,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 64,
                backgroundColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
          const SizedBox(height: 32),
          Text(
            name.toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            possition.toUpperCase(),
            style: const TextStyle(color: Colors.black54),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 120,
            child: Text(
              about,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black54),
            ),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {},
            child: Text(
              mail,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
