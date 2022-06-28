import 'package:flutter/material.dart';
import 'package:travelingo_apps/template.dart';

class AksesPoint extends StatelessWidget {
  
  String imgs;

  AksesPoint({
    required this.imgs
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: BackgroundTextColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imgs,
            width: 30,
          )
        ],
      ),
    );
  }
}
