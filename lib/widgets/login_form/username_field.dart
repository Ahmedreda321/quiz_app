import 'package:flutter/material.dart';
import 'package:quiz_app/utils/constants.dart';

class UsernameField extends StatelessWidget {
  const UsernameField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: kPrimaryColor),
          ),
          prefixIcon: const Icon(Icons.person, color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          labelText: 'Username',
          labelStyle: TextStyle(color: Colors.grey[600]),
        ),
      ),
    );
  }
}
