import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';

class ButtonRow extends StatelessWidget {
  final Size mediaQuery;
  final VoidCallback onNextPressed;
  final VoidCallback onSkipPressed;

  const ButtonRow({
    super.key,
    required this.mediaQuery,
    required this.onNextPressed,
    required this.onSkipPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: onNextPressed,
          style: ElevatedButton.styleFrom(
            elevation: 12.0,
            backgroundColor: sideColor,
            minimumSize: Size(mediaQuery.width * 0.45, 45),
          ),
          child: const Text(
            'Next',
            style: TextStyle(fontSize: 25, color: sideTextColor),
          ),
        ),
        const Spacer(),
        ElevatedButton(
          onPressed: onSkipPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: sideTextColor,
            elevation: 12.0,
          ),
          child: const Text(
            'Skip',
            style: TextStyle(fontSize: 16, color: primaryTextColor),
          ),
        ),
      ],
    );
  }
}
