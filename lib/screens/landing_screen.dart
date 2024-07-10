// import 'package:flutter/material.dart';
// import 'package:quiz_app/screens/login_screen.dart';
// import 'package:quiz_app/utils/images_name.dart';
// import 'package:stroke_text/stroke_text.dart';

// class LandingScreen extends StatelessWidget {
//   const LandingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context).size;

//     return Scaffold(
//       body: Container(
//         height: mediaQuery.height,
//         width: mediaQuery.width,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(background),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             const Spacer(),
//             Image.asset(logo),
//             const Text(
//               'ITI Quiz App',
//               style: TextStyle(
//                 fontFamily: 'TitilliumWeb',
//                 fontSize: 35,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.yellow,
//               ),
//             ),
//             const Text(
//               'we are creative, enjoy your app',
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//                 fontFamily: 'Margarine',
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const Spacer(),
//             Padding(
//               padding: const EdgeInsets.all(25.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) {
//                         return const LoginScreen();
//                       },
//                     ),
//                   );
//                 },
//                 style: ButtonStyle(
//                   shape: WidgetStateProperty.all(
//                     RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                   minimumSize: WidgetStateProperty.all(const Size(400, 50)),
//                   backgroundColor: WidgetStateProperty.all(Colors.yellow),
//                 ),
//                 child: const StrokeText(
//                   strokeWidth: 1.5,
//                   strokeColor: Colors.black,
//                   text: 'start',
//                   textStyle: TextStyle(fontSize: 30, color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';
import 'package:quiz_app/widgets/landing_form/landing_header.dart';
import 'package:quiz_app/widgets/landing_form/start_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: mediaQuery.height,
        width: mediaQuery.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          primaryColor,
          sideColor,
        ])),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Spacer(),
            LandingHeader(),
            Spacer(),
            StartButton(),
          ],
        ),
      ),
    );
  }
}
