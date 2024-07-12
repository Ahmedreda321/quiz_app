import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';

class TouchIdIcon extends StatelessWidget {
  const TouchIdIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.fingerprint,
      color: Colors.blue.shade600,
      size: 70.0,
      shadows: [
        Shadow(
          blurRadius: 10.0,
          color: textformiconcolor[500]!,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }
}

class TouchIdText extends StatelessWidget {
  const TouchIdText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'use touch id',
      style: TextStyle(fontSize: 18, color: textformiconcolor.shade600),
    );
  }
}
