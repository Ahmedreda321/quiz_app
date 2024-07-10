import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';

class RegisterRow extends StatelessWidget {
  const RegisterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // const Spacer(),
        const Text(
          'New to ITI Quiz App?',
          style: TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.w400),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Register',
              style: TextStyle(
                  fontSize: 18, color: sideColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
