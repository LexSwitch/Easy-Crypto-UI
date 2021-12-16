import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:easy_crypto_ui/constants.dart';
import 'package:easy_crypto_ui/pages/page2/bottomTabs/settings.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'bottomTabs/addTabs/add.dart';
import 'bottomTabs/bookTabs/book.dart';
import 'bottomTabs/search.dart';
import 'bottomTabs/wallet.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int currentIndex = 0;

  List tabs = [Wallet(), Search(), Add(), Book(), Settings()];

  List bottomNavBarIcons = [
    {'icon': Icon(Icons.account_balance_wallet_rounded), 'title': 'Wallet'},
    {'icon': Icon(Icons.search), 'title': 'Search'},
    {'icon': Icon(Icons.add), 'title': 'Add'},
    {'icon': Icon(Icons.menu_book), 'title': 'Book'},
    {'icon': Icon(Icons.settings), 'title': 'Settings'}
  ];

  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [Wallet(), Search(), Add(), Book(), Settings()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: bottomNavBarIcons.map((bNi) {
          return PersistentBottomNavBarItem(
            icon: bNi['icon'],
            title: null,
            activeColorPrimary: kPrimColor,
            inactiveColorPrimary: Colors.grey,
          );
        }).toList(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.neumorphic,
      ),
    );
  }
}
