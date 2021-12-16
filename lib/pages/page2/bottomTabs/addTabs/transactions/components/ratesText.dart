import 'package:easy_crypto_ui/constants.dart';
import 'package:flutter/material.dart';

class RateText extends StatelessWidget {
  String itemRate;
  Color color=kPrimColor;

  RateText({required this.itemRate,required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      itemRate,
      style: TextStyle(
          color: color,
          fontSize: 14),
    );
  }
}
