import 'package:dress_shop/data/data.dart';
import 'package:dress_shop/widgets/color_card.dart';
import 'package:dress_shop/widgets/size_card.dart';
import 'package:flutter/material.dart';

class SizeAndColor extends StatefulWidget {
  @override
  _SizeAndColorState createState() => _SizeAndColorState();
}

class _SizeAndColorState extends State<SizeAndColor> {
  int selectedIndex = 0;
  int selectedIndexColor = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width*.25,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Select size",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                width: size.width * .06,
                color: Colors.black,
                height: 5,
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                height: size.height * .05,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: sizeList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: SizeCard(
                              sizee: sizeList[index],
                              isSelected:
                                  selectedIndex == index ? true : false));
                    }),
              )
            ])),
        Container(
            width: size.width * .25,
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Select color",
                style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                width: size.width * .06,
                color: Colors.black,
                height: 5,
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                height: size.height * .05,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: colorList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndexColor = index;
                            });
                          },
                          child: ColorCard(
                              color: colorList[index],
                              isSelectedColor:
                              selectedIndexColor == index ? true : false));
                    }),
              )
            ]))
      ],
    );
  }
}
