import 'package:flutter/material.dart';
import 'package:holding_gesture/holding_gesture.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundIconButton({this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return HoldDetector(
      holdTimeout: Duration(milliseconds: 100),
      onHold: onPressed,
      child: RawMaterialButton(
        onPressed: onPressed,
        shape: CircleBorder(),
        fillColor: kRoundIconButtonColor,
        elevation: 4.0,
        constraints: BoxConstraints.tightFor(
          width: 48.0,
          height: 48.0,
        ),
        child: Icon(icon),
      ),
    );
  }
}
