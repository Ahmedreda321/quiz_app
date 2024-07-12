import 'package:flutter/material.dart';
import 'package:quiz_app/screens/login_screen.dart';
import 'package:quiz_app/utils/colors.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const LoginScreen();
                },
              ),
            );
          },
          style: ButtonStyle(
            elevation: WidgetStateProperty.all(12.0),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            minimumSize: WidgetStateProperty.all(const Size(400, 50)),
            backgroundColor: WidgetStateProperty.all(primaryTextColor),
          ),
          child: const Text(
            'Start',
            style: TextStyle(fontSize: 35, color: sideTextColor),
          )),
    );
  }
}
