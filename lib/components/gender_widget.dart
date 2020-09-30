import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class GenderWidget extends StatelessWidget {
  GenderWidget({this.iconData, this.textData});
  final IconData iconData;
  final String textData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textData,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
