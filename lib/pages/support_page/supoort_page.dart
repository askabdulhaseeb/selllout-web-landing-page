import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/core/custom_elevated_button.dart';
import '../../widgets/core/custom_textformfield.dart';
import '../footer/footer.dart';
import '../landing_page/landing_page.dart';

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
                children: <Widget>[
                  const SizedBox(height: 30),
                  const Center(
                    child: Text(
                      'Sellout Support Center',
                      style:
                          TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const CustomTextFormField(hint: 'Enter your name'),
                  const Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const CustomTextFormField(hint: 'Enter your email'),
                  const Text(
                    'Subject',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const CustomTextFormField(hint: 'Enter your subject'),
                  const Text(
                    'Message',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const CustomTextFormField(
                      hint: 'Enter your message', maxLines: 5),
                  SizedBox(
                    width: 100,
                    child: CustomElevatedButton(
                      title: 'Send',
                      onTap: () =>
                          GoRouter.of(context).go(LandingPage.routePath),
                    ),
                  )
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
