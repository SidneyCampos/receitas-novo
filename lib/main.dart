import 'package:delicias_app/screens/home_screen.dart';
import 'package:delicias_app/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]); // hide status bar

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(
      const BMICalculator(),
    ),
  );
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/HomeScreen',
      routes: {
        //'/': (context) => const SplashScreen(),
        '/LoginPage': (context) => const LoginPage(),
        '/HomeScreen': (context) => const HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
