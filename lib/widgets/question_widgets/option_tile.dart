import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';

class OptionTile extends StatelessWidget {
  final String optionText;
  final String optionValue;
  final String? groupValue;
  final ValueChanged<String?> onChanged;

  const OptionTile({
    super.key,
    required this.optionText,
    required this.optionValue,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: Text(
            optionText,
            style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: primaryTextColor),
          ),
          value: optionValue,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        const Divider(
          endIndent: 40,
          indent: 40,
          color: textformiconcolor,
        ),
      ],
    );
  }
}
