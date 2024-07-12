import 'package:quiz_app/data/art_data.dart';
import 'package:quiz_app/data/cinema_data.dart';
import 'package:quiz_app/data/iq_data.dart';
import 'package:quiz_app/data/knowledge_data.dart';
import 'package:quiz_app/data/languages.dart';
import 'package:quiz_app/data/math_data.dart';
import 'package:quiz_app/data/science_data.dart';
import 'package:quiz_app/utils/images_name.dart';

class CategoryModel {
  final String name;
  final String image;
  final List<Map<dynamic, dynamic>> listname;

  CategoryModel(
      {required this.name, required this.image, required this.listname});
}

List<CategoryModel> categories = [
  CategoryModel(name: 'IQ', image: iq, listname: iqQuestions),
  CategoryModel(name: 'Art', image: art, listname: artquestions),
  CategoryModel(
      name: 'Knowledge', image: knowleg, listname: knowledgeQuestions),
  CategoryModel(
      name: 'Languages', image: languages, listname: languagesQuestions),
  CategoryModel(name: 'Math', image: mathematics, listname: mathQuestions),
  CategoryModel(name: 'Science', image: science, listname: scienceQuestions),
  CategoryModel(name: 'cinema', image: drama, listname: cinemaQuestions),
];
