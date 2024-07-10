import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/custom_appbar.dart';

class ScoreHeader extends StatelessWidget {
  const ScoreHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomAppBar(title: 'Quizz Score');
  }
}
