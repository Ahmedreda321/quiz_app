import 'package:flutter/material.dart';
import 'package:quiz_app/utils/constants.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(
          colors: [Colors.green, Colors.green, Colors.transparent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(bounds),
        child: const Text(
          'Login',
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: kTextColor,
          ),
        ),
      ),
    );
  }
}
