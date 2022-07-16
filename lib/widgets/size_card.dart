import 'package:flutter/material.dart';

class SizeCard extends StatelessWidget {
final String sizee;
final bool isSelected;
SizeCard({this.sizee,this.isSelected=false});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: size.width*.01),
      width: size.width*.025,
      height: size.width*.025,
      child: Center(child: Text(sizee,style: TextStyle(
        color: Colors.black,fontWeight: FontWeight.w900
      ),),),
      decoration: BoxDecoration(color:isSelected?Colors.white:Colors.grey,
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}
