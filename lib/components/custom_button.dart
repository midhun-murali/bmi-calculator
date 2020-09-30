import 'package:flutter/material.dart';
import '../constants.dart';

class CustomButton extends StatelessWidget {
  final Function onTap;
  final String buttonText;

  CustomButton({@required this.buttonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        color: kAccentColor,
        height: 60.0,
        width: double.infinity,
      ),
    );
  }
}
