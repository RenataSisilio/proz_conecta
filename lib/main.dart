import 'package:flutter/material.dart';
import 'package:proz_conecta/modules/onboarding/onboarding_page.dart';

import 'design_sys/colors.dart';
import 'modules/auth/initial_page_base.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
        primaryColor: ProzColors.purple,
        secondaryHeaderColor: ProzColors.orange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialPageBase(),
        '/onboarding': (context) => const OnboardingPage(),
      },
    );
  }
}
