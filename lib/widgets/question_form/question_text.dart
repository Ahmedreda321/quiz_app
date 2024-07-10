import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';

class QuestionText extends StatelessWidget {
  final String question;
  final String questionDetail;

  const QuestionText({
    super.key,
    required this.question,
    required this.questionDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: primaryTextColor),
        ),
        const SizedBox(height: 20),
        Text(
          questionDetail,
          style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: primaryTextColor),
        ),
      ],
    );
  }
}
