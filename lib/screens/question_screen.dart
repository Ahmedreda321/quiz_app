// import 'package:flutter/material.dart';
// import 'package:quiz_app/screens/category_screen.dart';
// import 'package:quiz_app/screens/score_screen.dart';
// import 'package:quiz_app/utils/alert_dialoge.dart';
// import 'package:quiz_app/widgets/custom_appbar.dart';
// import 'package:quiz_app/widgets/gradient_background.dart';
// import 'package:quiz_app/widgets/question_form/button_row.dart';
// import 'package:quiz_app/widgets/question_form/option_tile.dart';
// import 'package:quiz_app/widgets/question_form/question_text.dart';

// class QuestionScreen extends StatefulWidget {
//   const QuestionScreen(
//       {super.key, required this.categoryname, required this.listname});
//   final String categoryname;
//   final List<Map<dynamic, dynamic>> listname;
//   @override
//   State<QuestionScreen> createState() => _QuestionScreenState();
// }

// class _QuestionScreenState extends State<QuestionScreen> {
//   String? _selectedOption;
//   int index = 0;
//   int score = 0;

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
//               CustomAppBar(
//                   title: '${widget.categoryname} Questions',
//                   onPressed: showAlertDialog(
//                       message: 'Are you sure you want to exit?',
//                       title: 'Back to categories', onPressed: () {
//                     Navigator.pushAndRemoveUntil(
//                       context,
//                       MaterialPageRoute<void>(
//                           builder: (BuildContext context) =>
//                               const CategoryScreen()),
//                       ModalRoute.withName('/'),
//                     );
//                   }, context)),
//               SizedBox(
//                 height: mediaQuery.height * 0.05,
//               ),
//               QuestionText(
//                 question: 'Question ${index + 1}',
//                 questionDetail: widget.listname[index]['question'],
//               ),
//               const Spacer(flex: 2),
//               ...widget.listname[index]['answers'].map<Widget>((answer) {
//                 return OptionTile(
//                   optionText: answer['text'],
//                   optionValue: answer['text'],
//                   groupValue: _selectedOption,
//                   onChanged: (value) {
//                     setState(() {
//                       _selectedOption = value;
//                     });
//                   },
//                 );
//               }).toList(),
//               const Spacer(flex: 6),
//               ButtonRow(
//                 mediaQuery: mediaQuery,
//                 onNextPressed: () {
//                   if (_selectedOption != null) {
//                     if (widget.listname[index]['answers'].firstWhere((answer) =>
//                             answer['text'] == _selectedOption)['correct'] ==
//                         true) {
//                       score++;
//                     }
//                   } else {
//                     showAlertDialog(context,
//                         message: '', onPressed: () {}, title: '');
//                   }
//                   setState(() {
//                     if (index < widget.listname.length - 1) {
//                       index++;
//                       _selectedOption = null;
//                     } else {
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => ScoreScreen(
//                             score: score,
//                             listname: widget.listname,
//                           ),
//                         ),
//                       );
//                     }
//                   });
//                 },
//                 onSkipPressed: () {
//                   setState(() {
//                     if (index < widget.listname.length - 1) {
//                       index++;
//                       _selectedOption = null;
//                     } else {
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => ScoreScreen(
//                               score: score, listname: widget.listname),
//                         ),
//                       );
//                     }
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quiz_app/screens/category_screen.dart';
import 'package:quiz_app/screens/score_screen.dart';
import 'package:quiz_app/utils/alarm.dart';
import 'package:quiz_app/utils/alert_dialoge.dart';
import 'package:quiz_app/widgets/custom_appbar.dart';
import 'package:quiz_app/widgets/gradient_background.dart';
import 'package:quiz_app/widgets/question_form/button_row.dart';
import 'package:quiz_app/widgets/question_form/option_tile.dart';
import 'package:quiz_app/widgets/question_form/question_text.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(
      {super.key, required this.categoryname, required this.listname});
  final String categoryname;
  final List<Map<dynamic, dynamic>> listname;
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  String? _selectedOption;
  int index = 0;
  int score = 0;

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
              CustomAppBar(
                title: '${widget.categoryname} Questions',
                onPressed: () {
                  showAlertDialog(
                    context,
                    message: 'Are you sure you want to exit?',
                    title: 'Back to categories',
                    onPressed: () {
                      score = 0;
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const CategoryScreen(),
                        ),
                        ModalRoute.withName('/'),
                      );
                    },
                  );
                },
              ),
              SizedBox(
                height: mediaQuery.height * 0.05,
              ),
              QuestionText(
                question: 'Question ${index + 1}',
                questionDetail: widget.listname[index]['question'],
              ),
              const Spacer(flex: 2),
              ...widget.listname[index]['answers'].map<Widget>((answer) {
                return OptionTile(
                  optionText: answer['text'],
                  optionValue: answer['text'],
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value;
                    });
                  },
                );
              }).toList(),
              const Spacer(flex: 6),
              ButtonRow(
                mediaQuery: mediaQuery,
                onNextPressed: () {
                  if (_selectedOption != null) {
                    if (widget.listname[index]['answers'].firstWhere((answer) =>
                            answer['text'] == _selectedOption)['correct'] ==
                        true) {
                      score++;
                    }
                    setState(() {
                      if (index < widget.listname.length - 1) {
                        index++;
                        _selectedOption = null;
                      } else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScoreScreen(
                              score: score,
                              listname: widget.listname,
                            ),
                          ),
                        );
                      }
                    });
                  } else {
                    Alert(context);
                  }
                },
                onSkipPressed: () {
                  setState(() {
                    if (index < widget.listname.length - 1) {
                      index++;
                      _selectedOption = null;
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScoreScreen(
                              score: score, listname: widget.listname),
                        ),
                      );
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
