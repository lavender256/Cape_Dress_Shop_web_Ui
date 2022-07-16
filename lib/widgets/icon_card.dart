import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
final String icon;

IconCard({this.icon});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.02,
      height: size.width*.02,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:NetworkImage(icon),fit: BoxFit.cover
        )
      ),
    );
  }
}
