import 'package:easy_crypto_ui/pages/page2/bottomTabs/addTabs/transactions/components/currencyDetails.dart';
import 'package:easy_crypto_ui/pages/page2/bottomTabs/addTabs/transactions/components/ratesText.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';

class CryptoCurrencies extends StatelessWidget {
  final List<currencyDetails> currencyList = [
    currencyDetails(
        name: 'ethereum',
        imageUrl: 'assets/images/ethereum.png',
        value: '0.73 eth',
        walletAmt: '\$3,438.05',
        rate: '\$2,329.1 + 210%'),
    currencyDetails(
        name: 'cardano',
        imageUrl: 'assets/images/cardano.png',
        value: '1,149.87 ada',
        walletAmt: '\$2,357.24',
        rate: '\$1,411.52 + 67%'),
    currencyDetails(
        name: 'eos',
        imageUrl: 'assets/images/eos.png',
        value: '402.03 eos',
        walletAmt: '\$1,881.52',
        rate: '\$6.93 + 0.37%'),
    currencyDetails(
        name: 'binance coin',
        imageUrl: 'assets/images/binance.png',
        value: '2.42 bnb',
        walletAmt: '\$1,561.27',
        rate: '\$461.78 + 42%'),
    currencyDetails(
        name: 'bitcoin',
        imageUrl: 'assets/images/bitcoin.png',
        value: '3.54 btc',
        walletAmt: '\$4,663.43',
        rate: '\$1,329.07 + 44%'),
    currencyDetails(
        name: 'ethereum',
        imageUrl: 'assets/images/ethereum.png',
        value: '0.73 eth',
        walletAmt: '\$3,438.05',
        rate: '\$2,329.1 + 210%'),
    currencyDetails(
        name: 'cardano',
        imageUrl: 'assets/images/cardano.png',
        value: '1,149.87 ada',
        walletAmt: '\$2,357.24',
        rate: '\$1,411.52 + 67%'),
    currencyDetails(
        name: 'eos',
        imageUrl: 'assets/images/eos.png',
        value: '402.03 eos',
        walletAmt: '\$1,881.52',
        rate: '\$6.93 + 0.37%')
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){print(currencyList[index].name);},
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.09),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                )),
                            padding: EdgeInsets.all(5),
                            child: Image.asset(
                              currencyList[index].imageUrl,
                              color: Colors.grey,
                              fit: BoxFit.contain,
                              width: 30,
                              height: 30,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(3),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  currencyList[index].name,
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  currencyList[index].value,
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            currencyList[index].walletAmt,
                            style: TextStyle(fontSize: 18),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                            RateText( itemRate: currencyList[index].rate, color: kPrimColor,)
                              ,
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: currencyList.length,
        ),
      ),
    );
  }
}
