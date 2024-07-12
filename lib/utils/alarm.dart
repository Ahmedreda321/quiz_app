// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';

void Alert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: textformiconcolor,
        title: const Text(
          'Attention !',
          style: TextStyle(
              color: primaryTextColor,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        content: const Text(
          'This is no option selected.',
          style: TextStyle(color: primaryTextColor, fontSize: 16),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'OK',
              style: TextStyle(color: primaryColor, fontSize: 16),
            ),
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
          ),
        ],
      );
    },
  );
}
