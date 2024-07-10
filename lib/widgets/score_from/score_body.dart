import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';
import 'package:quiz_app/utils/images_name.dart';

class ScoreBody extends StatelessWidget {
  const ScoreBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 4),
        Image.asset(cup, height: 200, width: 200),
        const Spacer(flex: 1),
        Text(
          'congratulations'.toUpperCase(),
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'TitilliumWeb',
            color: sideTextColor,
          ),
        ),
        const Spacer(flex: 3),
        const Text(
          'your score is :',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'TitilliumWeb',
            color: primaryTextColor,
          ),
        ),
        const Text(
          '10/10',
          style: TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.bold,
            fontFamily: 'TitilliumWeb',
            color: primaryTextColor,
          ),
        ),
        const Spacer(flex: 6),
      ],
    );
  }
}
