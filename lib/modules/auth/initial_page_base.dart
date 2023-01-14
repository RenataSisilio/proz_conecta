import 'package:flutter/material.dart';

import '../../design_sys/colors.dart';
import 'applicant_login_page.dart';
import 'user_type_gate_page.dart';

class InitialPageBase extends StatelessWidget {
  const InitialPageBase({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return Scaffold(
      backgroundColor: ProzColors.purple,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/yellow_shape.png',
                alignment: Alignment.topLeft,
              ),
              Image.asset(
                'assets/orange_shape.png',
                alignment: Alignment.bottomRight,
              ),
            ],
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.all(40.0),
            child: Image.asset(
              'assets/logo_proz.png',
              width: MediaQuery.of(context).size.width / 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                UserTypeGatePage(
                  companyPageNavigation: null,
                  applicantPageNavigation: () => pageController.animateToPage(
                    2,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear,
                  ),
                ),
                ApplicantLoginPage(
                  onLogin: () =>
                      Navigator.of(context).pushReplacementNamed('/onboarding'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
