import 'package:dress_shop/data/data.dart';
import 'package:dress_shop/data/string.dart';
import 'package:dress_shop/widgets/size_and_color.dart';
import 'package:flutter/material.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';

import 'dress_card.dart';

class ContentContainer extends StatefulWidget {
  @override
  _ContentContainerState createState() => _ContentContainerState();
}

class _ContentContainerState extends State<ContentContainer> {
  ButtonState buttonState=ButtonState.idle;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * .03, vertical: size.height * .04),
      width: size.width * .6,
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Women - Office - Clothes & Suites/skirts",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
          ),
          SizedBox(height: size.height * .02),
          Text(
            "CAPE WOMEN OFFICE DRESS",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: size.width * .025),
          ),
          SizedBox(height: size.height * .04),
          Text(
            "\$${126.21}",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: size.width * .025),
          ),
          SizedBox(height: size.height * .04),
          Container(
            width: size.width,
            height: size.height * .22,
            child: ListView.builder(
                itemCount: imageList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return DressCard(
                    image: imageList[index],
                  );
                }),
          ),
          SizedBox(
            height: size.height * .05,
          ),
          Text(mashinwash),
          SizedBox(
            height: size.height * .05,
          ),
          SizeAndColor(),
          SizedBox(
            height: size.height * .05,
          ),
          Row(
            children: [
              Container( width: size.width * .1,
              height: size.height * .07,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15)),
                child: ProgressButton.icon(iconedButtons: {
                  ButtonState.idle: IconedButton(
                      text: "ADD TO BAG",
                      icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
                      ),
                  ButtonState.loading: IconedButton(
                      text: "Loading", color: Colors.white),
                  ButtonState.fail: IconedButton(
                      text: "Failed",
                      icon: Icon(Icons.cancel, color: Colors.white),
                      color: Colors.red.shade300),
                  ButtonState.success: IconedButton(
                      text: "Success",
                      icon: Icon(
                        Icons.check_circle,
                        color: Colors.white,
                      ),
                  ),

                }, state: buttonState,
                onPressed: (){
                  setState(() {
                    buttonState=ButtonState.success;
                  });
                }
                ),
              ),
              SizedBox(
                width: size.width * .02,
              ),
              Container(
                width: size.width * .1,
                height: size.height * .07,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    "ADD TO WISH LIST",
                    style: TextStyle(
                        fontSize: size.width * .008,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.2),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
