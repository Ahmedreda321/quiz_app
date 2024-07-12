import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';

class RememberMeRow extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool> onChanged;

  const RememberMeRow({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              onChanged(!isChecked);
            },
            icon: isChecked
                ? const Icon(Icons.check_box, color: sideColor)
                : const Icon(Icons.check_box_outline_blank_rounded,
                    color: sideColor),
          ),
          const Text('Remember me'),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Forgot Password?',
              style: TextStyle(fontSize: 18, color: sideColor),
            ),
          ),
        ],
      ),
    );
  }
}
