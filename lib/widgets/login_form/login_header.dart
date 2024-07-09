import 'package:flutter/material.dart';
import 'package:quiz_app/utils/images_name.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: SizedBox(
        height: 200,
        width: 200,
        child: Image.asset(alien),
      ),
    );
  }
}
