import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String label;
  final String? hintText;
  final String? errorText;
  final bool? obscureText;
  final Function(String?) onChanged;
  final String? Function(String?)? validator;

  const Input({
    super.key,
    required this.label,
    this.errorText,
    required this.onChanged,
    this.validator,
    this.obscureText,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        isDense: true,
        hintText: hintText,

        // prefixIcon: Icon(Icons.verified_user_outlined),
        errorText: errorText,
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red.shade600,
            width: 2,
          ),
        ),
      ),
      obscureText: obscureText ?? false,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
