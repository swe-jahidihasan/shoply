import 'package:flutter/material.dart';

class JInputField extends StatelessWidget {
  const JInputField({
    super.key,
    required this.controller,
    this.obscureText = false,
    required this.labelText,
    required this.hintText,
    this.suffixIcon,
    this.inputType = TextInputType.text,
    this.validator, this.prefixIcon,  this.readOnly = false,  this.onTap,
  });

  final TextEditingController controller;
  final bool obscureText;
  final String labelText;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool readOnly;
  final TextInputType inputType;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      obscureText: obscureText,
      keyboardType: inputType,
      validator: validator,
      onTap: onTap,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
