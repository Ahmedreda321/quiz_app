import 'package:flutter/material.dart';
import 'package:quiz_app/utils/globel.dart';
import 'package:quiz_app/widgets/login_form/footer.dart';
import 'package:quiz_app/widgets/login_form/login_button.dart';
import 'package:quiz_app/widgets/login_form/register_text.dart';
import 'login_title.dart';
import 'text_field.dart';
import 'touch_id.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
    required this.mediaQuery,
  });

  final Size mediaQuery;

  @override
  // ignore: library_private_types_in_public_api
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.mediaQuery.height * 0.7,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFEFECEC),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const Spacer(),
            const LoginTitle(),
            const Spacer(flex: 2),
            CustomTextField(
              labelText: 'Username',
              icon: Icons.person,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                } else if (value.length < 4) {
                  return 'Username must be at least 4 characters long';
                } else if (value.length > 8) {
                  return 'Username mustn\'t be more than 8 characters long';
                } else if (value[0] != value[0].toUpperCase()) {
                  return 'The first character must be a uppercase letter';
                }
                return null;
              },
              onChanged: (value) {
                setState(() {
                  userName = value;
                });
              },
            ),
            const Spacer(),
            CustomTextField(
              labelText: 'Password',
              icon: Icons.lock,
              icon2: Icons.visibility_off,
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                } else if (value.length < 8) {
                  return 'Password must be at least 8 characters long';
                }
                return null;
              },
            ),
            const Spacer(),
            const RegisterRow(),
            const Spacer(flex: 3),
            LoginButton(mediaQuery: widget.mediaQuery, formKey: _formKey),
            const Spacer(),
            const TouchIdIcon(),
            const Spacer(),
            const TouchIdText(),
            const Spacer(),
            RememberMeRow(
              isChecked: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
