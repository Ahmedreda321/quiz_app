import 'package:flutter/material.dart';
import 'package:quiz_app/screens/category_screen.dart';
import 'package:quiz_app/screens/landing_screen.dart';
import 'package:quiz_app/utils/colors.dart';

class ScoreButtons extends StatelessWidget {
  const ScoreButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CategoryScreen(),
              ),
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: sideColor[700],
          ),
          child: const Text(
            'play Again',
            style: TextStyle(
              color: sideTextColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => const LandingScreen()),
              ModalRoute.withName('/'),
            );
          },
          style: TextButton.styleFrom(backgroundColor: sideTextColor),
          child: const Text(
            'Exit',
            style: TextStyle(
              color: primaryTextColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
