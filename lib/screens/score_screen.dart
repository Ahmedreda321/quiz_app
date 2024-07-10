import 'package:flutter/material.dart';
import 'package:quiz_app/screens/category_screen.dart';
import 'package:quiz_app/screens/landing_screen.dart';
import 'package:quiz_app/utils/colors.dart';
import 'package:quiz_app/utils/images_name.dart';
import 'package:quiz_app/widgets/custom_appbar.dart';
import 'package:quiz_app/widgets/gradient_background.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Column(
          children: [
            const CustomAppBar(title: 'Quizz Score'),
            const Spacer(flex: 4),
            Image.asset(cup, height: 200, width: 200),
            const Spacer(flex: 1),
            Text(
              'congratulations'.toUpperCase(),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'TitilliumWeb',
                color: sideTextColor,
              ),
            ),
            const Spacer(flex: 3),
            const Text(
              'your score is :',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'TitilliumWeb',
                color: primaryTextColor,
              ),
            ),
            const Text(
              '10/10',
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                fontFamily: 'TitilliumWeb',
                color: primaryTextColor,
              ),
            ),
            const Spacer(flex: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CategoryScreen(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: sideColor[700],
                  ),
                  child: const Text(
                    'play Again',
                    style: TextStyle(
                      color: sideTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const LandingScreen()),
                    );
                  },
                  style: TextButton.styleFrom(backgroundColor: sideTextColor),
                  child: const Text(
                    'Exit',
                    style: TextStyle(
                      color: primaryTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:quiz_app/widgets/gradient_background.dart';
// import 'package:quiz_app/widgets/score_from/score_body.dart';
// import 'package:quiz_app/widgets/score_from/score_buttons.dart';
// import 'package:quiz_app/widgets/score_from/score_header.dart';

// class ScoreScreen extends StatelessWidget {
//   const ScoreScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: SingleChildScrollView(
//         child: GradientBackground(
//           child: Column(
//             children: [
//               ScoreHeader(),
//               ScoreBody(),
//               ScoreButtons(),
//               Spacer(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
