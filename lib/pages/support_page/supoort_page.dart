import 'package:flutter/material.dart';

import '../../widgets/core/custom_textformfield.dart';
import '../footer/footer.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);
  static const String routePath = '/support';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      'Sellout Support Center',
                      style:
                          TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  CustomTextFormField(hint: 'Enter your name'),
                  Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  CustomTextFormField(hint: 'Enter your email'),
                  Text(
                    'Subject',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  CustomTextFormField(hint: 'Enter your subject'),
                  Text(
                    'Message',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  CustomTextFormField(hint: 'Enter your message'),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
