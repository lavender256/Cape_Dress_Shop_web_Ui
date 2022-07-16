import 'package:dress_shop/widgets/content_container.dart';
import 'package:dress_shop/widgets/expanded_tap.dart';
import 'package:dress_shop/widgets/slide_image_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      body: Container( color: Color(0xffD3C9BF),
        child: Stack(
          children: [
            Positioned(
                top: size.height*.16,
                left: size.width*.4,
                child: Container(
                  width: size.width*.1,
                  height: size.height*.1,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(25),bottomRight: Radius.circular(25))
                  ),
                )),
            Container(
                width: size.width,
                height: size.height,
                child: Row(
                  children: [
                   SlideImageContainer(),
                    ContentContainer()
                  ],
                )),
            Positioned(top: size.height*.2,right: size.width*.02,
              child: ExpandedTap()
            ),

          ],
        ),
      ),
    );
  }
}
