import 'package:flutter/material.dart';
import 'package:quiz_app/utils/constants.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: kPrimaryColor),
          ),
          prefixIcon: const Icon(Icons.lock, color: Colors.grey),
          suffixIcon: const Icon(Icons.visibility_off, color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          labelText: 'Password',
          labelStyle: TextStyle(color: Colors.grey[600]),
        ),
      ),
    );
  }
}
