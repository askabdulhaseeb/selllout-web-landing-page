import 'package:flutter/material.dart';

import '../../widgets/core/app_title_text.dart';
import '../../widgets/team/team_member_card.dart';

class TeamWebview extends StatelessWidget {
  const TeamWebview({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              const AppTitleText(title: 'Our reative team'),
              const SizedBox(height: 30),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: const Text(
                  'Everyone at Selllout is working non stop to make the app a great user experience for our customers. We will continue to make improvements and keep Selllout as secure and safe as possible. Please contact us for any information.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black45),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: const <Widget>[
                    TeamMemberCard(
                      imagePath: '',
                      name: 'Abdul Haseeb',
                      possition: 'Head Programmer',
                      about:
                          '''At Selllout, I'm focused and dedicated in making the ultimate one stop buying and selling app and will continue to drive my team to always bring the best for our customers.''',
                      mail: 'admin@selllout.com',
                    ),
                    TeamMemberCard(
                      imagePath: '',
                      name: 'Zubair Sain',
                      possition: 'CEO & Founder',
                      about:
                          '''Thank you for choosing Selllout. I will continue to work hard for my customers and always give them the best user experience.''',
                      mail: 'app@selllout.com',
                    ),
                    TeamMemberCard(
                      imagePath: '',
                      name: 'Tasha Lilly',
                      possition: 'Marketing',
                      about:
                          'Selllout is a project that is close to me and I will continue to showcase the greatness and simplicity of the app.',
                      mail: 'support@selllout.com',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
