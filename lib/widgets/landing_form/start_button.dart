import 'package:flutter/material.dart';
import 'package:quiz_app/screens/login_screen.dart';
import 'package:stroke_text/stroke_text.dart';

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
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          minimumSize: WidgetStateProperty.all(const Size(400, 50)),
          backgroundColor: WidgetStateProperty.all(Colors.yellow),
        ),
        child: const StrokeText(
          strokeWidth: 1.5,
          strokeColor: Colors.black,
          text: 'start',
          textStyle: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
