import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthInputComponent extends StatelessWidget {
  const AuthInputComponent(
      {super.key, this.obscureText, required this.labelText});

  final bool? obscureText;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.phone,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      obscureText: obscureText ?? false,
      expands: false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
    );
  }
}
