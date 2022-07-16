import 'package:dress_shop/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_controller.dart';
import 'package:flutter_carousel_widget/flutter_carousel_options.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

import 'icon_card.dart';

class SlideImageContainer extends StatefulWidget {

  @override
  _SlideImageContainerState createState() => _SlideImageContainerState();
}

class _SlideImageContainerState extends State<SlideImageContainer> {
  CarouselController carouselController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    carouselController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .4,
      height: size.height,
      child: FlutterCarousel.builder(
        carouselController: carouselController,
        itemCount: imageList.length,
        itemBuilder:
            (BuildContext context, int itemIndex, int pageViewIndex) {
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageList[itemIndex]),
                    fit: BoxFit.cover)),
            child: Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height,
                  color: Colors.black.withOpacity(.1),
                ),
                Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: size.width * .06,
                      height: size.height * .9,
                      color: Colors.white.withOpacity(.4),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                        children: [
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              "CAPES",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: 5,
                            height: size.height * .06,
                            color: Colors.white,
                          ),
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              "AGOS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: size.height * .08,
                          ),
                          IconCard(
                            icon:
                            "https://i.postimg.cc/52FywKwb/Popular-Logo-facebook-icon-png-removebg-preview.png",
                          ),
                          IconCard(
                              icon:
                              "https://i.postimg.cc/nLbzTKk7/index-removebg-preview-2.png"),
                          IconCard(
                            icon:
                            "https://i.postimg.cc/vmrmK1qK/png-transparent-instagram-icon-thepix-digital-marketing-logo-shiftdelete-instagram-logo-miscellaneou.png",
                          ),
                          IconCard(
                            icon:
                            "https://i.postimg.cc/qRp7HkWv/linkedin-logo.png",
                          )
                        ],
                      ),
                    )),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: size.width * .14,
                      height: size.height * .08,
                      color: Colors.white.withOpacity(.4),
                      child: Row(
                        children: [
                          Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    carouselController.nextPage();
                                  });
                                },
                                child: Container(
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Divider(
                                thickness: 2,
                                color: Colors.white,
                                indent: 10,
                                endIndent: 10,
                              )),
                          Expanded(
                              child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      carouselController.previousPage();
                                    });
                                  },
                                  child: Container(
                                    child: Icon(
                                      Icons
                                          .arrow_forward_ios_outlined,
                                      color: Colors.white,
                                    ),
                                  )))
                        ],
                      ),
                    ))
              ],
            ),
          );
        },
        options: CarouselOptions(
            viewportFraction: 1,
            initialPage: 0,
            reverse: true,
            scrollDirection: Axis.horizontal),
      ),
    );
  }
}
