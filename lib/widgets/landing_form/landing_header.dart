import 'package:flutter/material.dart';
import 'package:quiz_app/utils/images_name.dart';

class LandingHeader extends StatelessWidget {
  const LandingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(logo),
        const Text(
          'ITI Quiz App',
          style: TextStyle(
            fontFamily: 'TitilliumWeb',
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          ),
        ),
        const Text(
          'we are creative, enjoy your app',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Margarine',
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
