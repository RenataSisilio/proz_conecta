import 'package:flutter/material.dart';

import '../../design_sys/colors.dart';

class WhiteButton extends StatelessWidget {
  const WhiteButton(this.text, {Key? key, this.onPressed}) : super(key: key);

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(ProzColors.white),
          foregroundColor: const MaterialStatePropertyAll(ProzColors.purple),
          textStyle: MaterialStatePropertyAll(
            Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
