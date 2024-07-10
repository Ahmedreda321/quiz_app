import 'package:quiz_app/utils/images_name.dart';

class CategoryModel {
  final String name;
  final String image;

  CategoryModel({required this.name, required this.image});
}

List<CategoryModel> categories = [
  CategoryModel(name: 'Art', image: art),
  CategoryModel(name: 'Drama', image: drama),
  CategoryModel(name: 'Knowledge', image: knowleg),
  CategoryModel(name: 'Languages', image: languages),
  CategoryModel(name: 'Math', image: mathematics),
  CategoryModel(name: 'Science', image: science),
];
