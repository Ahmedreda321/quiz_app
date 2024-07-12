import 'package:flutter/material.dart';
import 'package:quiz_app/models/category_model.dart';
import 'package:quiz_app/screens/question_screen.dart';
import 'package:quiz_app/utils/colors.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModel category;

  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //categoryname = category.name;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => QuestionScreen(
              categoryname: category.name,
              listname: category.listname,
            ),
          ),
        );
      },
      child: Card(
        color: sideTextColor,
        margin: const EdgeInsets.only(top: 15, left: 80, right: 80),
        elevation: 10,
        child: Column(
          children: [
            Text(
              category.name,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: primaryTextColor,
                  fontFamily: 'TitilliumWeb'),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Image.asset(category.image,
                  height: 100, width: 100, fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
