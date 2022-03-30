import 'package:delicias_app/constants.dart';
import 'package:delicias_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]); // hide status bar

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(kMainStatelessWidget),
  );
}

class ReceitasDeMinas extends StatelessWidget {
  const ReceitasDeMinas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/LoginPage': (context) => kLoginPageRoute,
        '/HomeScreen': (context) => kHomeScreenRoute,
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
