import 'package:delicias_app/constants.dart';
import 'package:flutter/material.dart';
import '../components/login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kLoginBackgroundImage,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text(
              'Delícias de Minas Receitas',
              textAlign: TextAlign.center,
              style: kLoginTitle,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Cozinhe como a vó Lourdes',
              textAlign: TextAlign.center,
              style: kLoginSubTitle,
            ),
            LoginButton(),
          ],
        ),
      ),
    );
  }
}
