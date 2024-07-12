import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final bool obscureText;
  final String? Function(String?) validator;
  final void Function(String)? onChanged;
  IconData? icon2;

  CustomTextField({
    super.key,
    required this.labelText,
    required this.icon,
    this.obscureText = false,
    required this.validator,
    this.icon2,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: primaryColor),
          ),
          prefixIcon: Icon(icon, color: textformiconcolor),
          suffixIcon: Icon(icon2, color: textformiconcolor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          labelText: labelText,
          labelStyle: TextStyle(color: textformiconcolor[600]),
        ),
        validator: validator,
        onChanged: onChanged,
      ),
    );
  }
}
