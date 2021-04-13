import '../pages/profile.dart';

import 'package:flutter/material.dart';

import 'order.dart';
import 'dashboard.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Dashboard(),
    Order(),
    Profile(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff55A1D5),
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(25.0),
            bottomRight: Radius.circular(25.0),
            bottomLeft: Radius.circular(25.0),
          )),
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60.0),
              topRight: Radius.circular(60.0),
            ),
            child: BottomAppBar(
              color: Color(0xff1c2954),
              shape: CircularNotchedRectangle(),
              //color: Color(0xff1C2954),
              notchMargin: 12,
              child: Container(
                height: height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen =
                                  Dashboard(); // if user taps on this dashboard tab will be active
                              currentTab = 0;
                            });
                          },
                          child: Icon(
                            AntDesign.home,
                            color: currentTab == 0 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ],
                    ),

                    // Right Tab bar icons

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen =
                                  Profile(); // if user taps on this dashboard tab will be active
                              currentTab = 3;
                            });
                          },
                          child: Icon(
                            Ionicons.ios_person,
                            color: currentTab == 3 ? Colors.white : Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
