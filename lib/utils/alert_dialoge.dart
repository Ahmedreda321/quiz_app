import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';

void showAlertDialog(BuildContext context,
    {required String message,
    required String title,
    required void Function()? onPressed}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: textformiconcolor,
        title: Text(
          title,
          style: const TextStyle(
              color: primaryTextColor,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        content: Text(
          message,
          style: const TextStyle(color: primaryTextColor, fontSize: 16),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              "Cancel",
              style: TextStyle(color: primaryColor),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            onPressed: onPressed,
            child: const Text(
              "OK",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      );
    },
  );
}
