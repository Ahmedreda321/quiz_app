import 'package:flutter/material.dart';
import 'package:quiz_app/models/category_model.dart';
import 'package:quiz_app/screens/landing_screen.dart';
import 'package:quiz_app/widgets/custom_appbar.dart';
import 'package:quiz_app/widgets/gradient_background.dart';
import 'package:quiz_app/widgets/category_form/category_list.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Column(
          children: [
            CustomAppBar(
              title: 'Categories',
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => const LandingScreen()),
                  ModalRoute.withName('/'),
                );
              },
            ),
            CategoryList(categories: categories),
          ],
        ),
      ),
    );
  }
}
