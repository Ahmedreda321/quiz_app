import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';

class ScoreContent extends StatelessWidget {
  final String imagePath;
  final String resultText;
  final String userName;
  final int score;
  final int listLength;

  const ScoreContent({
    super.key,
    required this.imagePath,
    required this.resultText,
    required this.userName,
    required this.score,
    required this.listLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 4),
        Image.asset(imagePath, height: 200, width: 200),
        const Spacer(flex: 1),
        Text(
          resultText.toUpperCase(),
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'TitilliumWeb',
            color: sideTextColor,
          ),
        ),
        Text(
          userName.toUpperCase(),
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
        Text(
          '$score/$listLength',
          style: const TextStyle(
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
