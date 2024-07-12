// import 'package:flutter/material.dart';
// import 'package:quiz_app/screens/category_screen.dart';
// import 'package:quiz_app/screens/landing_screen.dart';
// import 'package:quiz_app/utils/alert_dialoge.dart';
// import 'package:quiz_app/utils/colors.dart';
// import 'package:quiz_app/utils/globel.dart';
// import 'package:quiz_app/utils/images_name.dart';
// import 'package:quiz_app/widgets/gradient_background.dart';

// // ignore: must_be_immutable
// class ScoreScreen extends StatelessWidget {
//   int score;
//   final List<Map<dynamic, dynamic>> listname;
//   ScoreScreen({super.key, required this.score, required this.listname});

//   @override
//   Widget build(BuildContext context) {
//     final division = score / listname.length;
//     return Scaffold(
//       // backgroundColor: primaryColor,
//       appBar: AppBar(
//         backgroundColor: primaryColor,
//         automaticallyImplyLeading: false,
//         centerTitle: true,
//         title: const Text(
//           'Quizz Score',
//           style: TextStyle(
//             color: sideTextColor,
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//             fontFamily: '',
//           ),
//         ),
//         //backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       body: GradientBackground(
//         child: Column(
//           children: [
//             //const CustomAppBar(title: 'Quizz Score'),
//             const Spacer(flex: 4),
//             if (division < 0.5) Image.asset(dislike, height: 200, width: 200),
//             if (division >= 0.5 && division < 0.75)
//               Image.asset(good, height: 200, width: 200),
//             if (division >= 0.75) Image.asset(congrat, height: 200, width: 200),

//             const Spacer(flex: 1),
//             if (division < 0.5)
//               Text(
//                 'you can do better'.toUpperCase(),
//                 style: const TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'TitilliumWeb',
//                   color: sideTextColor,
//                 ),
//               ),
//             if (division >= 0.5 && division < 0.75)
//               Text(
//                 'well done !'.toUpperCase(),
//                 style: const TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'TitilliumWeb',
//                   color: sideTextColor,
//                 ),
//               ),
//             if (division >= 0.75)
//               Text(
//                 'congratulations!'.toUpperCase(),
//                 style: const TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'TitilliumWeb',
//                   color: sideTextColor,
//                 ),
//               ),

//             Text(
//               '$userName'.toUpperCase(),
//               style: const TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'TitilliumWeb',
//                 color: sideTextColor,
//               ),
//             ),
//             const Spacer(flex: 3),
//             const Text(
//               'your score is :',
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'TitilliumWeb',
//                 color: primaryTextColor,
//               ),
//             ),
//             Text(
//               '${score.toString()}/${listname.length}',
//               style: const TextStyle(
//                 fontSize: 70,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'TitilliumWeb',
//                 color: primaryTextColor,
//               ),
//             ),
//             const Spacer(flex: 6),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     score = 0;
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const CategoryScreen(),
//                       ),
//                     );
//                   },
//                   style: TextButton.styleFrom(
//                     backgroundColor: sideColor[700],
//                   ),
//                   child: const Text(
//                     'play Again',
//                     style: TextStyle(
//                       color: sideTextColor,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     score = 0;
//                     showAlertDialog(context,
//                         message: 'Are you sure?', title: 'Exit', onPressed: () {
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const LandingScreen(),
//                         ),
//                       );
//                     });
//                   },
//                   style: TextButton.styleFrom(backgroundColor: sideTextColor),
//                   child: const Text(
//                     'Exit',
//                     style: TextStyle(
//                       color: primaryTextColor,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const Spacer(),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';
import 'package:quiz_app/utils/globel.dart';
import 'package:quiz_app/utils/images_name.dart';
import 'package:quiz_app/widgets/gradient_background.dart';
import 'package:quiz_app/widgets/score_from/score_buttons.dart';
import 'package:quiz_app/widgets/score_from/score_content.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  final List<Map<dynamic, dynamic>> listname;

  const ScoreScreen({super.key, required this.score, required this.listname});

  @override
  Widget build(BuildContext context) {
    final division = score / listname.length;
    String resultText;
    String imagePath;

    if (division < 0.5) {
      resultText = 'you can do better';
      imagePath = dislike;
    } else if (division < 0.75) {
      resultText = 'well done !';
      imagePath = good;
    } else {
      resultText = 'congratulations!';
      imagePath = congrat;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Quizz Score',
          style: TextStyle(
            color: sideTextColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: GradientBackground(
        child: Column(
          children: [
            Flexible(
              child: ScoreContent(
                imagePath: imagePath,
                resultText: resultText,
                userName: userName,
                score: score,
                listLength: listname.length,
              ),
            ),
            const ScoreButtons(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
