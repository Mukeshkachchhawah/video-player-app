import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_application_1/Pages/additem.dart';
import 'package:flutter_application_1/Pages/search_screens/search.dart';
import 'package:flutter_application_1/Pages/notification_Screen/notification.dart';
import 'package:flutter_application_1/Pages/user_profile/person.dart';

import 'Pages/home_screens/home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int index = 0;
  final _pages = [
    Home_Page(),
    search_Page(),
    Add_Item(),
    Notification_Page(),
    Person()
  ];

  @override
  Widget build(BuildContext context) {
    // bottom navigtor bar icons button
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.search, size: 30),
      Icon(Icons.add_circle_outline_sharp, size: 30),
      Icon(Icons.notifications, size: 30),
      Icon(Icons.perm_identity, size: 30),
    ];
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        //  key: _bottomNavigationKey,
        index: index,
        height: 60.0,
        items: items,
        color: Color.fromARGB(255, 13, 11, 102),
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.red,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
        // letIndexChange: (index) => true,
      ),
      body: _pages[index],
    );
  }
}
