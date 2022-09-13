import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/landing_page/landing_page.dart';
import 'providers/home_app_bar_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const Color kPrimaryColor = Color(0xFFD32F2F);
    const Color kSecondaryColor = Color(0xFF7C4DFF);
    return MultiProvider(
      // ignore: always_specify_types
      providers: [
        ChangeNotifierProvider<HomeAppBarProvider>(
          create: (_) => HomeAppBarProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Selllout',
        theme: ThemeData(
          dividerTheme: const DividerThemeData(thickness: 0.5, space: 0),
          primaryColor: kPrimaryColor,
          colorScheme: const ColorScheme(
            primary: kPrimaryColor,
            secondary: kSecondaryColor,
            surface: Colors.white,
            background: Colors.white,
            error: Colors.red,
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onSurface: Colors.grey,
            onBackground: Colors.grey,
            onError: Colors.red,
            brightness: Brightness.light,
          ),
        ),
        home: const LandingPage(),
      ),
    );
  }
}
