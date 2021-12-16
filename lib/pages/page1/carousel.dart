import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  List carouselItems = [
    {
      'image': 'assets/images/circle1.png',
      'title': 'cryptocurrency made easy',
      'subtitle':
          'start exploring the crypto world now, with our app it\,s easy and secure'
    },
    {
      'image': 'assets/images/circle2.png',
      'title': 'cryptocurrency made simple',
      'subtitle':
          'trade in the tech world now, with our app it\,s easy and secure'
    },
    {
      'image': 'assets/images/circle1.png',
      'title': 'cryptocurrency made convenient',
      'subtitle':
          'make more money with our app it\,s easy and secure'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      //color: Colors.red,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: CarouselSlider(
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  reverse: true,
                  initialPage: 0,
                  height: 350,
                  viewportFraction: 0.9,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  autoPlayCurve: Curves.fastOutSlowIn),
              items: carouselItems.map((cI) {
                return Builder(builder: (BuildContext context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                          cI['image'],
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        child: Text(
                          cI['title'],
                          style: Theme.of(context).textTheme.headline4?.merge(
                              TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        child: Text(
                          cI['subtitle'],
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.merge(TextStyle(color: Colors.black)),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  );
                });
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
