import 'package:flutter/material.dart';
import 'package:quiz_app/models/category_model.dart';
import 'package:quiz_app/widgets/category_form/category_widget.dart';

class CategoryList extends StatelessWidget {
  final List<CategoryModel> categories;

  const CategoryList({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int I) {
          return CategoryWidget(category: categories[I]);
        },
      ),
    );
  }
}
