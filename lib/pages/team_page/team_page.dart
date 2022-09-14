import 'package:flutter/material.dart';

import '../../widgets/core/responsive_layout.dart';
import 'team_webview.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});
  static const String routePage = '/team';

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobile: SizedBox(),
        tablet: TeamWebview(),
        desktop: TeamWebview(),
    );
  }
}
