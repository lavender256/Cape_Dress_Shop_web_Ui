import 'package:dress_shop/data/string.dart';
import 'package:flutter/material.dart';

class ExpandedTap extends StatefulWidget {

  @override
  _ExpandedTapState createState() => _ExpandedTapState();
}

class _ExpandedTapState extends State<ExpandedTap> {
  bool isExpanded = false;
  bool isTapped = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
      },
      onHighlightChanged: (value){
        setState(() {
          isExpanded=value;
        });
      },
      child: AnimatedContainer(padding: EdgeInsets.all(15),
          duration: Duration(seconds: 1),
          curve: Curves.fastLinearToSlowEaseIn,
          width: isExpanded?385:390,
          height: isTapped?isExpanded?65:70:isExpanded?300:320,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child:isTapped?Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Tap to Expand it",style:TextStyle(
                      color: Colors.black
                  )),
                  Icon(isTapped?Icons.keyboard_arrow_down:Icons.keyboard_arrow_up,color: Colors.black,)
                ],
              )
            ],
          ):
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Tap to Expand it",style:TextStyle(
                      color: Colors.black
                  )),
                  Icon(isTapped?Icons.keyboard_arrow_down:Icons.keyboard_arrow_up,color: Colors.black,)
                ],
              ),

              Text(isTapped?"":text,style: TextStyle(
                  color: Colors.black
              ),)
            ],
          )
      ),
    );
  }
}


