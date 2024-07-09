import 'package:flutter/material.dart';

class TouchID extends StatelessWidget {
  const TouchID({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Icon(
            Icons.fingerprint,
            color: Colors.blue.shade600,
            size: 70.0,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.grey[500]!,
                offset: const Offset(0, 3),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Use Touch ID',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ],
    );
  }
}
