import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/landing_page/landing_page.dart';
import 'pages/privacy_policy_page/privacy_policy_page.dart';

final GoRouter router = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  initialLocation: LandingPage.routePath,
  routes: <GoRoute>[
    GoRoute(
      path: LandingPage.routePath,
      builder: (BuildContext context, GoRouterState state) =>
          const LandingPage(),
    ),
    GoRoute(
      path: PrivacyPage.routePath,
      builder: (BuildContext context, GoRouterState state) =>
          const PrivacyPage(),
    ),
    //   routes: <GoRoute>[
    //     GoRoute(
    //       path: HomePage.route,
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const HomePage(),
    //     ),
    //     GoRoute(
    //       path: ServicesPage.route,
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const ServicesPage(),
    //     ),
    //     GoRoute(
    //       path: AboutPage.route,
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const AboutPage(),
    //     ),
    //     GoRoute(
    //       path: ProjectPage.route,
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const ProjectPage(),
    //     ),
    //     GoRoute(
    //       path: TestimonyPage.route,
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const TestimonyPage(),
    //     ),
    //     GoRoute(
    //       path: Footer.route,
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const Footer(),
    //     ),
    //   ],
    // ),
  ],
  errorBuilder: (BuildContext context, GoRouterState state) =>
      const Scaffold(body: Center(child: Text('Error'))),
);
