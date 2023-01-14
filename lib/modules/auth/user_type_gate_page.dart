import 'package:flutter/material.dart';

import '../../design_sys/colors.dart';
import '../../shared/widgets/white_button.dart';

class UserTypeGatePage extends StatelessWidget {
  const UserTypeGatePage({
    super.key,
    required this.companyPageNavigation,
    required this.applicantPageNavigation,
  });

  final VoidCallback? companyPageNavigation;
  final VoidCallback? applicantPageNavigation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Conectando empresas com os profissionais mais qualificados para suas vagas.',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: ProzColors.white),
          ),
          const SizedBox(height: 48.0),
          WhiteButton(
            'ENTRAR COMO EMPRESA',
            onPressed: companyPageNavigation,
          ),
          const SizedBox(height: 32.0),
          WhiteButton(
            'ENTRAR COMO CANDIDATO',
            onPressed: applicantPageNavigation,
          ),
        ],
      ),
    );
  }
}
