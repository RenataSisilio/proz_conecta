
import 'package:flutter/material.dart';

import '../../design_sys/colors.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({
    super.key,
    required this.index,
    this.canJump = true,
    required this.text,
    this.extraText,
  });

  final int index;
  final bool canJump;
  final String text;
  final String? extraText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Image.asset('assets/onboarding_$index.png'),
              canJump
                  ? Padding(
                      padding: const EdgeInsets.only(right: 24.0, top: 40.0),
                      child: Text(
                        'Pular',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: ProzColors.purple,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          padding: const EdgeInsets.all(2.0),
          color: ProzColors.purple.withAlpha(30),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: ProzColors.purple),
          ),
        ),
        extraText != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  extraText!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: ProzColors.darkGrey),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
