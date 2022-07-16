import 'package:flutter/material.dart';

class DressCard extends StatefulWidget {
  final String image;

  DressCard({this.image});

  @override
  _DressCardState createState() => _DressCardState();
}

class _DressCardState extends State<DressCard> {
  bool isHover = false;
  

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){},
      onHover: (val) {
        setState(() {
          isHover = val;
        });
      },
      child:isHover?
      Container(
        width: size.width * .12,
        height: size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                alignment: Alignment.topCenter,
                image: NetworkImage(widget.image),
                fit: BoxFit.cover)),
      )
          : Container(
        width: size.width * .05,
        height: size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                alignment: Alignment.topCenter,
                image: NetworkImage(widget.image),
                fit: BoxFit.cover)),
      ),
    );
  }
}
