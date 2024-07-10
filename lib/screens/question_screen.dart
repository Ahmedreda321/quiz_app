// import 'package:flutter/material.dart';
// import 'package:quiz_app/screens/score_screen.dart';
// import 'package:quiz_app/widgets/custom_appbar.dart';
// import 'package:quiz_app/widgets/gradient_background.dart';

// class QuestionScreen extends StatefulWidget {
//   const QuestionScreen({super.key});

//   @override
//   State<QuestionScreen> createState() => _QuestionScreenState();
// }

// class _QuestionScreenState extends State<QuestionScreen> {
//   String? _selectedOption;

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context).size;
//     return Scaffold(
//       body: GradientBackground(
//         child: Padding(
//           padding: const EdgeInsets.all(15),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const CustomAppBar(title: 'Questions'),
//               const Spacer(),
//               const Text(
//                 'Question 1',
//                 style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black54),
//               ),
//               const Spacer(
//                 flex: 2,
//               ),
//               const Text(
//                 'Which artist was known for painting large-scale murals depicting scenes from Greek mythology?',
//                 style: TextStyle(
//                     fontSize: 23,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black54),
//               ),
//               const Spacer(
//                 flex: 2,
//               ),
//               RadioListTile(
//                 title: const Text(
//                   'Leonardo da Vinci',
//                   style: TextStyle(
//                       fontSize: 23,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black54),
//                 ),
//                 value: 'Are parallel',
//                 groupValue: _selectedOption,
//                 onChanged: (value) {
//                   setState(() {
//                     _selectedOption = value;
//                   });
//                 },
//               ),
//               RadioListTile(
//                 title: const Text(
//                   'Raphael',
//                   style: TextStyle(
//                       fontSize: 23,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black54),
//                 ),
//                 value: 'Leonardo da Vinci',
//                 groupValue: _selectedOption,
//                 onChanged: (value) {
//                   setState(() {
//                     _selectedOption = value;
//                   });
//                 },
//               ),
//               RadioListTile(
//                 title: const Text(
//                   'Michelangelo',
//                   style: TextStyle(
//                       fontSize: 23,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black54),
//                 ),
//                 value: 'Intersect at two points',
//                 groupValue: _selectedOption,
//                 onChanged: (value) {
//                   setState(() {
//                     _selectedOption = value;
//                   });
//                 },
//               ),
//               RadioListTile(
//                 title: const Text(
//                   'Sandro Botticelli',
//                   style: TextStyle(
//                       fontSize: 23,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black54),
//                 ),
//                 value: 'Intersect at one point',
//                 groupValue: _selectedOption,
//                 onChanged: (value) {
//                   setState(() {
//                     _selectedOption = value;
//                   });
//                 },
//               ),
//               const Spacer(
//                 flex: 6,
//               ),
//               Row(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const ScoreScreen(),
//                         ),
//                       );
//                     },
//                     style: ButtonStyle(
//                       elevation: WidgetStateProperty.all(12.0),
//                       backgroundColor: WidgetStateProperty.all(Colors.green),
//                       minimumSize: WidgetStateProperty.all(
//                         Size(mediaQuery.width * 0.45, 45),
//                       ),
//                     ),
//                     child: const Text(
//                       'Next',
//                       style: TextStyle(fontSize: 25, color: Colors.white54),
//                     ),
//                   ),
//                   const Spacer(),
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ButtonStyle(
//                       backgroundColor: WidgetStateProperty.all(Colors.white54),
//                       elevation: WidgetStateProperty.all(12.0),
//                     ),
//                     child: const Text('Skip',
//                         style: TextStyle(fontSize: 16, color: Colors.black54)),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quiz_app/screens/score_screen.dart';
import 'package:quiz_app/widgets/custom_appbar.dart';
import 'package:quiz_app/widgets/gradient_background.dart';
import 'package:quiz_app/widgets/question_form/button_row.dart';
import 'package:quiz_app/widgets/question_form/option_tile.dart';
import 'package:quiz_app/widgets/question_form/question_text.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: GradientBackground(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(title: 'Questions'),
              const Spacer(),
              const QuestionText(
                question: 'Question 1',
                questionDetail:
                    'Which artist was known for painting large-scale murals depicting scenes from Greek mythology?',
              ),
              const Spacer(flex: 2),
              OptionTile(
                optionText: 'Leonardo da Vinci',
                optionValue: 'Leonardo da Vinci',
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
              OptionTile(
                optionText: 'Raphael',
                optionValue: 'Raphael',
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
              OptionTile(
                optionText: 'Michelangelo',
                optionValue: 'Michelangelo',
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
              OptionTile(
                optionText: 'Sandro Botticelli',
                optionValue: 'Sandro Botticelli',
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
              const Spacer(flex: 6),
              ButtonRow(
                mediaQuery: mediaQuery,
                onNextPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScoreScreen(),
                    ),
                  );
                },
                onSkipPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
