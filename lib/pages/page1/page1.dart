import 'package:easy_crypto_ui/constants.dart';

import '../page2/page2.dart';
import 'package:flutter/material.dart';

import 'carousel.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Column(
              children: [
                Text(
                  'ceisy',
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(color: kPrimColor,height: 2,width: 55,)
              ],
            ),
          ),
          Carousel(),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page2()));
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18))),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 15, horizontal: 70)),
                  backgroundColor:
                      MaterialStateProperty.all(Theme.of(context).primaryColor),
                  foregroundColor: MaterialStateProperty.all(Colors.white)),
              child: Text(
                'create a portfolio',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          )
        ],
      )),
    );
  }
}
