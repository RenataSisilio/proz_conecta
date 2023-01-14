import 'package:flutter/material.dart';

import 'design_sys/colors.dart';
import 'modules/auth/initial_page_base.dart';
import 'modules/onboarding/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
        primaryColor: ProzColors.purple,
        secondaryHeaderColor: ProzColors.orange,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.windows: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialPageBase(),
        '/onboarding': (context) => const OnboardingPage(),
      },
    );
  }
}
