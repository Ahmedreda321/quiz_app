// import 'package:flutter/material.dart';
// import 'package:quiz_app/utils/images_name.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF2C752E),
//         scrolledUnderElevation: 0,
//       ),
//       body: Container(
//         height: mediaQuery.height,
//         width: mediaQuery.width,
//         decoration: const BoxDecoration(
//             gradient: LinearGradient(colors: [
//               Color(0xFF2C752E),
//               Color.fromARGB(255, 72, 170, 75),
//             ], begin: Alignment.topCenter, end: Alignment.center),
//             color: Color(0xFF2C752E)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(bottom: 50),
//               child:
//                   SizedBox(height: 200, width: 200, child: Image.asset(alien)),
//             ),
//             Container(
//               height: mediaQuery.height * 0.64,
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 color: Color(0xFFEFECEC),
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(50),
//                   topRight: Radius.circular(50),
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 25),
//                     child: ShaderMask(
//                       shaderCallback: (bounds) => const LinearGradient(
//                         colors: [
//                           Colors.green,
//                           Colors.green,
//                           Colors.transparent,
//                         ],
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                       ).createShader(bounds),
//                       child: const Text(
//                         'Login',
//                         style: TextStyle(
//                           fontSize: 45,
//                           fontWeight: FontWeight.bold,
//                           color: Colors
//                               .white, // Ensure the text color is white to apply the gradient properly
//                         ),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 25),
//                     child: TextField(
//                       decoration: InputDecoration(
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                             borderSide: const BorderSide(
//                               color: Color(0xFF2C752E),
//                             ),
//                           ),
//                           prefixIcon:
//                               const Icon(Icons.person, color: Colors.grey),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(30)),
//                           labelText: 'Username',
//                           labelStyle: TextStyle(
//                             color: Colors.grey[600],
//                           )),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 20, horizontal: 25),
//                     child: TextField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         prefixIcon: const Icon(Icons.lock, color: Colors.grey),
//                         suffixIcon: const Icon(Icons.visibility_off,
//                             color: Colors.grey),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30)),
//                         labelText: 'password',
//                       ),
//                     ),
//                   ),
//                   const Spacer(),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       const Spacer(),
//                       const Text(
//                         'New to ITI Quiz App?',
//                         style: TextStyle(
//                             fontSize: 15,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w400),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10),
//                         child: TextButton(
//                           onPressed: () {},
//                           child: const Text(
//                             'Register',
//                             style: TextStyle(
//                               fontSize: 18,
//                               color: Colors.green,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Spacer(
//                     flex: 12,
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ButtonStyle(
//                       elevation: WidgetStateProperty.all(12.0),
//                       backgroundColor: WidgetStateProperty.all(Colors.green),
//                       minimumSize: WidgetStateProperty.all(
//                         Size(mediaQuery.width * 0.45, 45),
//                       ),
//                     ),
//                     child: const Text(
//                       'Login',
//                       style: TextStyle(fontSize: 25, color: Colors.white),
//                     ),
//                   ),
//                   const Spacer(),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20),
//                     child: Icon(
//                       Icons.fingerprint,
//                       color: Colors.blue.shade600,
//                       size: 70.0,
//                       shadows: [
//                         Shadow(
//                           blurRadius: 10.0,
//                           color: Colors.grey[500]!,
//                           offset: Offset(0, 3),
//                         )
//                       ],
//                     ),
//                     //  SizedBox(
//                     //     height: 70, width: 70, child: Image.asset(finger)),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 20),
//                     child: Text(
//                       'use touch id',
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: Colors.grey.shade600,
//                       ),
//                     ),
//                   ),
//                   const Spacer(),
//                   // Padding(
//                   //   padding: const EdgeInsets.symmetric(
//                   //       vertical: 20, horizontal: 25),
//                   //   child: StatefulBuilder(
//                   //     builder: (context, setState) => Row(
//                   //       children: [
//                   //         Checkbox(
//                   //           activeColor: Colors.green,
//                   //           value: isChecked,
//                   //           onChanged: (bool? value) =>
//                   //               setState(() => isChecked = value!),
//                   //         ),
//                   //         const Text('Remember me',
//                   //             style: TextStyle(
//                   //               fontSize: 16,
//                   //             )),
//                   //         const Spacer(),
//                   //         TextButton(
//                   //           onPressed: () {},
//                   //           child: const Text(
//                   //             'Forgot Password?',
//                   //             style: TextStyle(
//                   //               fontSize: 18,
//                   //               color: Colors.green,
//                   //             ),
//                   //           ),
//                   //         ),
//                   //       ],
//                   //     ),
//                   //   ),
//                   // ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 20, horizontal: 25),
//                     child: Row(
//                       children: [
//                         IconButton(
//                           onPressed: () {
//                             setState(() {
//                               isChecked = !isChecked;
//                             });
//                           },
//                           icon: isChecked
//                               ? const Icon(
//                                   Icons.check_box,
//                                   color: Colors.green,
//                                 )
//                               : const Icon(
//                                   Icons.check_box_outline_blank_rounded,
//                                   color: Colors.green,
//                                 ),
//                         ),

//                         // Checkbox(
//                         //   value: isChecked,
//                         //   onChanged: (bool? value) {
//                         //     setState(() {
//                         //       isChecked = value!;
//                         //     });
//                         //   },
//                         // ),
//                         const Text('Remember me'),
//                         const Spacer(),
//                         TextButton(
//                           onPressed: () {},
//                           child: const Text(
//                             'Forgot Password?',
//                             style: TextStyle(
//                               fontSize: 18,
//                               color: Colors.green,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quiz_app/utils/constants.dart';
import 'package:quiz_app/widgets/login_form/login_form.dart';
import 'package:quiz_app/widgets/login_form/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: mediaQuery.height,
          width: mediaQuery.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [kPrimaryColor, Color.fromARGB(255, 72, 170, 75)],
              begin: Alignment.topCenter,
              end: Alignment.center,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const LoginHeader(),
              Container(
                height: mediaQuery.height * 0.64,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFEFECEC),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: const LoginForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
