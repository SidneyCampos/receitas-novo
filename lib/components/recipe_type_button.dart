import 'package:delicias_app/constants.dart';
import 'package:flutter/material.dart';

class RecipeTypeButton extends StatelessWidget {
  const RecipeTypeButton({required Key key, required this.buttonTitle})
      : super(key: key);

  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 2.0,
      child: Text(
        buttonTitle,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Color(0xFFF5F5F5),
        ),
      ),
      constraints: const BoxConstraints.tightFor(
        width: 64.0,
        height: 48.0,
      ),
      shape: kRoundedRectangleBorder,
      fillColor: Colors.redAccent.shade200,
    );
  }
}
