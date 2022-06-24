import 'package:flutter/material.dart';
import 'package:travelingo_apps/template.dart';

class CategoriesTile extends StatelessWidget {

  String name;

  CategoriesTile({ required this.name });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 12
      ),
      width: 83,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: BackgroundTextColor1),
      child: TextButton(
          onPressed: () {},
          child: Text(
            name,
            style:
                BlackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
          )),
    );
  }
}
