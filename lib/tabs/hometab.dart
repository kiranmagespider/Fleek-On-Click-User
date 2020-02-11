import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabHome();
  }
}

class TabHome extends StatefulWidget {
  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child:  new ListView(
          scrollDirection: Axis.vertical,
          dragStartBehavior: DragStartBehavior.start,
          shrinkWrap: true,
          padding: EdgeInsets.all(15),
          children: <Widget>[
            new  Container(
              child: CarouselSlider(
                height: 200.0,
                viewportFraction: 1.0,
                aspectRatio: 16 / 9,
                autoPlay: true,
                initialPage: 0,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                reverse: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                items: [1, 2, 3, 4, 5, 6].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          alignment: Alignment.bottomLeft,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(bottom: 20, left: 20),
                          margin: EdgeInsets.only(
                              top: 20),
                          decoration: BoxDecoration(
                              color: Colors.orange[800],
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'Banner $i',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Montserrat-SemiBold',
                                color: Colors.white),
                          ));
                    },
                  );
                }).toList(),
              ),
            ),
            Container(

              margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
              child: SizedBox(
                  height: 200.0,
                  child: Carousel(
                    dotPosition: DotPosition.bottomCenter,
                    radius: Radius.circular(20),
                    borderRadius:true,
                    
                    images: [
                      NetworkImage(
                          'http:\/\/demo.magespider.com\/HairSalon\/storage\/app\/trends\/9749badbed837236efc1bcdbf1f5e87c-1.jpeg'),
                      NetworkImage(
                          'http:\/\/demo.magespider.com\/HairSalon\/storage\/app\/trends\/eec16e782ebe3a31043eded22b7c749c-2.jpg'),
                          NetworkImage(
                          'http:\/\/demo.magespider.com\/HairSalon\/storage\/app\/trends\/e4eb51d5ba139bf79e08a6e520d05a75-3.jpg'),
                          NetworkImage(
                          'http:\/\/demo.magespider.com\/HairSalon\/storage\/app\/trends\/c1e90584d91503c38a036df96439b740-4.jpg'),
                          NetworkImage(
                          'http:\/\/demo.magespider.com\/HairSalon\/storage\/app\/trends\/48183b64c5fd78edf9d4ca12fdaf68a8-5.jpg'),
                      ExactAssetImage("assets/images/LaunchImage.jpg")
                    ],
                  )),
            )
          ],
        ),
        ),
    );
  }
}
