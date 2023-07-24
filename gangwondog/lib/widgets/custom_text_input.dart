import 'package:flutter/material.dart';
import 'package:gangwondog/constants/color/colors.dart';

class CustomTextInput extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool? obscureText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool autofocus;
  final ValueChanged<String>? onChanged;

  const CustomTextInput({
    this.hintText,
    this.errorText,
    this.obscureText,
    this.autofocus = false,
    required this.onChanged,
    super.key,
    required this.controller,
    required this.keyboardType,
    this.validator,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    const focusBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: mainTextDimmed,
        width: 0,
      ),
    );

    return TextFormField(
      keyboardType: keyboardType,
      cursorColor: mainLight,
      obscureText: obscureText ?? false,
      autofocus: autofocus,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        suffixIcon: suffixIcon,
        hintText: hintText,
        errorText: errorText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14,
        ),
        fillColor: mainTextBox,
        filled: true,
        border: InputBorder.none,
        focusedBorder: focusBorder,
      ),
      controller: controller,
      validator: validator,
    );
  }
}
