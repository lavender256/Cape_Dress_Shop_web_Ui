import 'package:flutter/material.dart';

class ColorCard extends StatelessWidget {
final bool isSelectedColor;
final Color color;

ColorCard({this.isSelectedColor = false, this.color});


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Container(
      width: size.width*.03,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: isSelectedColor?Colors.white:Colors.black26,width: 5)
      ),
    );
  }
}
