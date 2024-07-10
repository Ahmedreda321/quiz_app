import 'package:flutter/material.dart';
import 'package:quiz_app/utils/images_name.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.mediaQuery,
  });
  final Size mediaQuery;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: SizedBox(
        height: mediaQuery.height * 0.25,
        width: 200,
        child: Image.asset(alien),
      ),
    );
  }
}
