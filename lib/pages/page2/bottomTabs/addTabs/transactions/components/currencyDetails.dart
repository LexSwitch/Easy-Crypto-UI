import 'package:flutter/cupertino.dart';

class currencyDetails {
  final String name;
  final String value;
  final String walletAmt;
  final String rate;
  final String imageUrl;

  currencyDetails(
      {required this.name,
      required this.imageUrl,
      required this.value,
      required this.walletAmt,
      required this.rate});
}
