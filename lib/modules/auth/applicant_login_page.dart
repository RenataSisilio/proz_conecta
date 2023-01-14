import 'package:flutter/material.dart';

import '../../design_sys/colors.dart';
import '../../shared/widgets/white_button.dart';
import '../../shared/widgets/white_field.dart';

class ApplicantLoginPage extends StatefulWidget {
  const ApplicantLoginPage({super.key, required this.onLogin});

  final VoidCallback? onLogin;

  @override
  State<ApplicantLoginPage> createState() => _ApplicantLoginPageState();
}

class _ApplicantLoginPageState extends State<ApplicantLoginPage> {
  final formKey = GlobalKey<FormState>();
  final cpf = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80.0),
            Text(
              'Seja contratado com facilidade pelas nossas empresas parceiras!',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: ProzColors.white),
            ),
            const SizedBox(height: 32.0),
            Text(
              'Login:',
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: ProzColors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16.0),
            WhiteField(
              controller: cpf,
              labelText: 'CPF',
            ),
            const SizedBox(height: 16.0),
            WhiteField(
              controller: password,
              labelText: 'Senha',
              isPassword: true,
              helperText:
                  'A senha é a mesma que você usa para acessar a plataforma de ensino.',
            ),
            const SizedBox(height: 40.0),
            WhiteButton(
              'ENTRAR',
              onPressed: () {
                if ((formKey.currentState?.validate() ?? false) &&
                    widget.onLogin != null) {
                  widget.onLogin!();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
