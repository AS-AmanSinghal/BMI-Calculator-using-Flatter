import 'package:flutter/material.dart';
class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.color, this.cardchild,this.onpress});

  final Color color;
  final Widget cardchild;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()
      {
        onpress;
      },
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15.0)),
      ),
    );
  }
}