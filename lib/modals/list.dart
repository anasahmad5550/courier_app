import 'items.dart';
import 'package:flutter/material.dart';

final List<Items> items = [
  Items(title: "Courier", url: "delivery.png"),
  Items(title: "Food", url: "food.png"),
  Items(title: "Groceries", url: "grocery.png"),
  Items(title: "Utility Bills", url: "utilities.png"),
  Items(title: "Pharmacy", url: "hospital-sign.png"),
  Items(title: "Laundry", url: "washing.png"),
  Items(title: "Towing", url: "car.png"),
  Items(title: "Wines/Spirit", url: "wine.png"),
];

final List<String> imgList = [
  'first.jpg',
  'second.jpg',
  'third.jpg',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset('images/' + item,
                        fit: BoxFit.cover, width: 1000.0),
                    //Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        // child: Text(
                        //   'No. ${imgList.indexOf(item)} image',
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontSize: 20.0,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
