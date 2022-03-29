import 'package:delicias_app/components/recipe_card.dart';
import 'package:delicias_app/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // FINAL FUNCTIONS
    return Scaffold(
      backgroundColor: kHomeScreenBackgroundColor,
      bottomNavigationBar: kBottomNavigation,
      // floatingActionButton: const FloatingActionButton(onPressed: null),
      body: Padding(
        padding: kMainBodyPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            kTitlePadding,
            Padding(
              padding: kSearchBarPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: kSearchRow,
              ),
            ),
            Padding(
              padding: kRecipeTypeButton,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: kRecipeTypeButtons,
              ),
            ),
            RecipeCard(
              key: UniqueKey(),
              cardImage: const AssetImage('recipeImages/feijao_tropeiro.jpg'),
              recipeTitle: 'Feijão Tropeiro',
              ingredients: 10,
              minutes: 20,
            ),
          ],
        ),
      ),
    );
  }
}
