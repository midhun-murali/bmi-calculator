import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({@required this.color, this.cardChild, this.onCardClick});
  final Color color;
  final Widget cardChild;
  final Function onCardClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardClick,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
