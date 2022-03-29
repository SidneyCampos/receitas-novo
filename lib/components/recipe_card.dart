import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    Key? key,
    required this.cardImage,
    required this.recipeTitle,
    required this.ingredients,
    required this.minutes,
  }) : super(key: key);

  final AssetImage cardImage;
  final String recipeTitle;
  final int ingredients;
  final int minutes;

  @override
  Widget build(BuildContext context) {
    return Card(
      //color: Colors.blue,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22.5),
      ),
      elevation: 2.0,
      shadowColor: Colors.red,
      borderOnForeground: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        height: 200.0,
        width: 100.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: cardImage,
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
          gradient: const LinearGradient(
            begin: FractionalOffset.bottomCenter,
            end: FractionalOffset.topCenter,
            colors: [
              Colors.black,
              Colors.black12,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  recipeTitle,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    '$ingredients Ingredientes',
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 20.0,
                    child: Text(
                      ' | ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Text(
                    '$minutes Min.',
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
