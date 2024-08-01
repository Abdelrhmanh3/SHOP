import 'package:flutter/material.dart';

import '../../constants.dart';
class ColorDot extends StatelessWidget {
  const ColorDot({super.key, required this.fillcolor, this.isSelected = false});
  final Color fillcolor;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3.0),
      height: 20,
      width: 20,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? kTextLightColor : Colors.transparent)),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: fillcolor),
      ),
    );
  }
}
