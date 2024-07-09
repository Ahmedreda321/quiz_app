import 'package:flutter/material.dart';
import 'package:quiz_app/utils/constants.dart';

class LoginButton extends StatelessWidget {
  final Size mediaQuery;

  const LoginButton({super.key, required this.mediaQuery});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(12.0),
        backgroundColor: WidgetStateProperty.all(kButtonColor),
        minimumSize: WidgetStateProperty.all(
          Size(mediaQuery.width * 0.45, 45),
        ),
      ),
      child: const Text(
        'Login',
        style: TextStyle(fontSize: 25, color: kTextColor),
      ),
    );
  }
}
