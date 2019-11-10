import 'package:flutter/material.dart';
import 'constants.dart';
class IconContentWidget extends StatelessWidget
{
  final IconData icon;
  final String name;
  IconContentWidget(this.icon,this.name);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          name,
          style: label,
        )
      ],
    );
  }
}
