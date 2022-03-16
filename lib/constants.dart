import 'package:flutter/material.dart';

const kLoginTitle = TextStyle(
  fontSize: 40.0,
  color: Colors.white,
  fontWeight: FontWeight.bold,
  shadows: [
    Shadow(
      color: Colors.black,
      offset: Offset(1, 1),
      blurRadius: 30,
    ),
  ],
);

const kLoginSubTitle = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
  fontWeight: FontWeight.w300,
  shadows: [
    Shadow(
      color: Colors.black,
      offset: Offset(1, 1),
      blurRadius: 30,
    ),
  ],
);

const kLoginBackgroundImage = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('images/login-page.jpg'),
    fit: BoxFit.cover,
    opacity: 0.7,
  ),
  gradient: LinearGradient(
    begin: FractionalOffset.bottomCenter,
    end: FractionalOffset.topCenter,
    colors: [
      Colors.black,
      Colors.black12,
    ],
  ),
);
