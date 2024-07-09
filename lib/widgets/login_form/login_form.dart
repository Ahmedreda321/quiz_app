import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/login_form/footer.dart';
import 'package:quiz_app/widgets/login_form/login_button.dart';
import 'package:quiz_app/widgets/login_form/login_title.dart';
import 'package:quiz_app/widgets/login_form/password_field.dart';
import 'package:quiz_app/widgets/login_form/register_text.dart';
import 'package:quiz_app/widgets/login_form/touch_id.dart';
import 'package:quiz_app/widgets/login_form/username_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Column(
      children: [
        const LoginTitle(),
        const UsernameField(),
        const PasswordField(),
        const Spacer(),
        const RegisterText(),
        const Spacer(flex: 12),
        LoginButton(mediaQuery: mediaQuery),
        const Spacer(),
        const TouchID(),
        const Spacer(),
        const Footer(),
      ],
    );
  }
}
