import 'package:flutter/material.dart';
import 'package:quiz_app/screens/landing_screen.dart';
import 'package:quiz_app/utils/colors.dart';
import 'package:quiz_app/widgets/custom_appbar.dart';
import 'package:quiz_app/widgets/gradient_background.dart';
import 'package:quiz_app/widgets/login_form/login_form.dart';
import 'package:quiz_app/widgets/login_form/login_header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: primaryColor,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: GradientBackground(
            child: Column(
              children: [
                CustomAppBar(
                  title: '',
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const LandingScreen()),
                      ModalRoute.withName('/'),
                    );
                  },
                ),
                LoginHeader(mediaQuery: mediaQuery),
                LoginForm(mediaQuery: mediaQuery),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
