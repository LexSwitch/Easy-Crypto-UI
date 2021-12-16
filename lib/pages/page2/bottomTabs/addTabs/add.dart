import 'package:easy_crypto_ui/pages/page2/bottomTabs/addTabs/transactions/transactions.dart';
import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../../../../constants.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  Color activeColor = kPrimColor;
  Color inActiveColor =kInActiveColor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        height: double.infinity,
        child: ContainedTabBarView(
          initialIndex: 0,
          tabBarProperties: TabBarProperties(
              unselectedLabelColor: inActiveColor,
              indicatorColor: Colors.transparent,
              labelColor: activeColor),
          tabs: [
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                  ),
                  Text(
                    'transactions',
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.notifications_active_outlined,
                    //color: Colors.black,
                  ),
                  Text(
                    'notifications',
                    style: TextStyle(
                        //color:
                        ),
                  ),
                ],
              ),
            ),
          ],
          views: [
            Transactions(),
            Container(
              color: Colors.white,
              child: Center(
                child: Card(
                  child: Text('Notifications tab'),
                ),
              ),
            )
          ],
          onChange: (index) {
            print(index);
          },
        ),
      ),
    );
  }
}
