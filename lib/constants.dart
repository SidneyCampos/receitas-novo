import 'package:delicias_app/components/bottom_navigation.dart';
import 'package:delicias_app/components/filter_button.dart';
import 'package:delicias_app/components/recipe_type_button.dart';
import 'package:delicias_app/main.dart';
import 'package:delicias_app/screens/home_screen.dart';
import 'package:delicias_app/screens/login_page.dart';
import 'package:flutter/material.dart';

// MAIN

const kMainStatelessWidget = ReceitasDeMinas();
const kLoginPageRoute = LoginPage();
const kHomeScreenRoute = HomeScreen();

// LOGINPAGE

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

// HOMESCREEN

const kHomeScreenBackgroundColor = Color(0xFFF5F5F5);
const kMainBodyPadding = EdgeInsets.fromLTRB(8, 8, 8, 0);
const kSearchBarPadding = EdgeInsets.symmetric(horizontal: 16);
const kRecipeTypeButton = EdgeInsets.symmetric(horizontal: 16, vertical: 16.0);
const kBottomNavigation = BottomNavigation();

const kRoundedRectangleBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
);

const kTitlePadding = Padding(
  padding: EdgeInsets.fromLTRB(16, 56, 16, 6),
  child: Text(
    'Encontre As Melhores Receitas De Minas. ♨️',
    textAlign: TextAlign.left,
    style: TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
    ),
  ),
);

const kSearchBarRowContent = Flexible(
  flex: 4,
  child: TextField(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      prefixIcon: Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 20, 0),
        child: Icon(
          Icons.search,
          size: 35,
          color: Colors.black12,
        ),
      ),
      hintText: 'Procurar',
      hintStyle: TextStyle(
        color: Colors.black12,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1.0),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    ),
  ),
);

const kSearchRow = [
  kSearchBarRowContent,
  FilterButton(),
];

const kRecipeTypeButtons = [
  RecipeTypeButton(key: Key('a'), buttonTitle: 'Todos'),
  RecipeTypeButton(key: Key('b'), buttonTitle: 'Café'),
  RecipeTypeButton(key: Key('c'), buttonTitle: 'Almoço'),
  RecipeTypeButton(key: Key('d'), buttonTitle: 'Jantar'),
  RecipeTypeButton(key: Key('e'), buttonTitle: 'Doces'),
];
