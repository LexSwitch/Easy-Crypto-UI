import 'package:easy_crypto_ui/constants.dart';
import 'package:easy_crypto_ui/pages/page2/bottomTabs/addTabs/transactions/components/currencies.dart';
import 'package:easy_crypto_ui/pages/page2/bottomTabs/addTabs/transactions/components/ratesText.dart';
import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 120,
            child: Column(
              children: [
                Text(
                  'total balance',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '\$16,722.68',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RateText(
                      color: kPrimColor,
                      itemRate: '\$5,772.91 + 126%',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                )),
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '🤞 holding portfolio',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 16,
                      )
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('\$10,864.52',
                            style: Theme.of(context).textTheme.headline6?.merge(
                                  TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),
                                )),
                        SizedBox(
                          height: 1,
                        ),
                        RateText(
                            color: Colors.white, itemRate: '\$4,209.33 + 67%'),
                      ],
                    ),
                    Container(
                      width: 160,
                      height: 60,
                      child: Image.asset(
                        'assets/images/trend2.png',
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder()),
                              child: Icon(
                                Icons.add,
                                size: 12,
                              ),
                            ),
                            Text('buy', style: TextStyle(color: Colors.white))
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder()),
                              child: Icon(
                                Icons.remove,
                                size: 12,
                              ),
                            ),
                            Text(
                              'sell',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                          ),
                          child: Icon(
                            Icons.arrow_upward,
                            size: 12,
                          ),
                        ),
                        Text('send', style: TextStyle(color: Colors.white))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              //color: Colors.red,
              width: double.infinity,
              height: 280,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'assets',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                        Row(
                          children: [
                            Text('sort by: '),
                            Text(
                              'value 🔻',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  CryptoCurrencies()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
