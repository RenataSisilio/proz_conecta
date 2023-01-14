import 'package:flutter/material.dart';
import 'package:proz_conecta/design_sys/colors.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return Scaffold(
      backgroundColor: ProzColors.white,
      body: PageView(
        controller: pageController,
        children: [
          Column(
            children: [
              Text('Onboarding'),
            ],
          )
        ],
      ),
    );
  }
}
