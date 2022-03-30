import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(75, 35, 75, 70),
      child: SignInButton(
        Buttons.Google,
        onPressed: () {
          Navigator.pushNamed(context, '/HomeScreen');
        },
      ),
    );
  }
}
