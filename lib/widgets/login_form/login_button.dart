import 'package:flutter/material.dart';
import 'package:quiz_app/screens/category_screen.dart';
import 'package:quiz_app/utils/colors.dart';

class LoginButton extends StatelessWidget {
  final Size mediaQuery;
  final GlobalKey<FormState> formKey;

  const LoginButton(
      {super.key, required this.mediaQuery, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          // Perform the login action
          Navigator.pushReplacement(
            context,
            MaterialPageRoute<void>(
                builder: (BuildContext context) => const CategoryScreen()),
          );
        }
      },
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(12.0),
        backgroundColor: WidgetStateProperty.all(sideColor),
        minimumSize: WidgetStateProperty.all(
          Size(mediaQuery.width * 0.45, 45),
        ),
      ),
      child: const Text(
        'Login',
        style: TextStyle(fontSize: 25, color: primaryTextColor),
      ),
    );
  }
}
