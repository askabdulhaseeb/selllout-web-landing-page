import 'package:flutter/material.dart';

class HomeContactButtons extends StatelessWidget {
  const HomeContactButtons({Key? key}) : super(key: key);

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
