import 'package:delicias_app/constants.dart';
import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      // child: Container(
      //   color: Colors.blue,
      //   height: 58,
      //   width: 58,
      // ),
      child: RawMaterialButton(
        onPressed: () {},
        child: const Icon(Icons.filter_list),
        constraints: const BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        shape: kRoundedRectangleBorder,
        fillColor: Colors.red.shade100,
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),
    );
  }
}
