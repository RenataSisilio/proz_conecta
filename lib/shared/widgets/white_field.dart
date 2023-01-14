
import 'package:flutter/material.dart';

import '../../design_sys/colors.dart';

class WhiteField extends StatefulWidget {
  const WhiteField({
    super.key,
    required this.controller,
    required this.labelText,
    this.isPassword = false,
    this.helperText,
    this.validator,
  });

  final TextEditingController controller;
  final String labelText;
  final bool isPassword;
  final String? helperText;
  final String? Function(String?)? validator;

  @override
  State<WhiteField> createState() => _WhiteFieldState();
}

class _WhiteFieldState extends State<WhiteField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: ProzColors.white,
      obscureText: widget.isPassword ? !isVisible : false,
      style: const TextStyle(color: ProzColors.white),
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ProzColors.white),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ProzColors.white),
        ),
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: ProzColors.white),
        helperText: widget.helperText,
        helperStyle: const TextStyle(color: ProzColors.white),
        helperMaxLines: 3,
        isDense: true,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() => isVisible = !isVisible);
                },
                color: ProzColors.white,
              )
            : null,
      ),
      validator: widget.validator,
    );
  }
}
