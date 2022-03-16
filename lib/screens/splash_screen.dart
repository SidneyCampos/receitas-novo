// import 'dart:async';
// import 'package:delicias_app/screens/login_page.dart';
// import 'package:flutter/material.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     startTimer();
//   }
//
//   startTimer() async {
//     var duration = const Duration(seconds: 5);
//     return Timer(duration, route); // To open app after a time
//   }
//
//   route() {
//     Route _createRoute() {
//       return PageRouteBuilder(
//         pageBuilder: (context, animation, secondaryAnimation) =>
//             const LoginPage(),
//         transitionsBuilder: (context, animation, secondaryAnimation, child) {
//           return Align(
//             child: SizeTransition(
//               sizeFactor: animation,
//               child: child,
//               axisAlignment: 0.0,
//             ),
//           );
//         },
//       );
//     }
//
//     Navigator.of(context).push(
//       _createRoute(),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.white,
//       body: Image(
//         image: AssetImage('images/delicias.gif'),
//       ),
//     );
//   }
// }
