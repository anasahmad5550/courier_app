import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Platform.isAndroid
          ? AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.black),
              ),
              //backgroundColor: Colors.white,
            )
          : CupertinoNavigationBar(
              trailing: Center(
                child: Text(
                  'Profile',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  CupertinoIcons.back,
                  color: Colors.black,
                ),
              ),
            ),
    );
  }
}
