import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'senderAndReciever.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'dart:io';

var customsizedbox = Expanded(
  flex: 1,
  child: SizedBox(
    child: Container(
      color: Color(0xffF8F9FD),
    ),
  ),
);

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int _value = 1;
  String _dropDownValue;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
                'Send Package',
                style: TextStyle(color: Colors.black),
              ),
              //backgroundColor: Colors.white,
            )
          : CupertinoNavigationBar(
              trailing: Center(
                child: Text(
                  'Send Package',
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
      body: Column(
        children: [
          customsizedbox,
          Expanded(
            flex: 34,
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Octicons.location,
                          color: Color(0xffB4D680),
                        ),
                        labelText: 'PICKUP ADDRESS',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.my_location_rounded,
                            color: Color(0xffB4D680)),
                        labelText: 'DROP ADDRESS',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          customsizedbox,
          Expanded(
            flex: 17,
            child: Container(
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                  child: Row(
                    children: [
                      Icon(Icons.all_inbox, color: Color(0xffB4D680)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 0),
                            child: Text(
                              'SELECT PACKAGE TYPE',
                              style: TextStyle(
                                  color: Color(0xffB4D680), fontSize: 12),
                              //textAlign: TextAlign.start,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 0),
                              width: width * 0.85,
                              child: DropdownButton(
                                  isExpanded: true,
                                  //focusColor: Colors.pink,
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  value: _value,
                                  hint: _dropDownValue == null
                                      ? Text('Select Type Of PAckage')
                                      : Text(
                                          _dropDownValue,
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                  items: [
                                    DropdownMenuItem(
                                      child: Text("First Item"),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Second Item"),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                        child: Text("Third Item"), value: 3),
                                    DropdownMenuItem(
                                        child: Text("Fourth Item"), value: 4)
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
          customsizedbox,
          Expanded(
            flex: 34,
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                    ),
                    child: Row(
                      children: [
                        Icon(Feather.truck),
                        Text(
                          '   Click to select Vehicle Type',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: height * 0.04,
                            backgroundColor: Colors.black45,
                            child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: height * 0.038,
                                backgroundImage: AssetImage('images/bike.png')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'ARMOTALE',
                              style: TextStyle(
                                  color: Color(0xff57C0DE), fontSize: 16),
                            ),
                          ),
                          Text(
                            'S P I N T E R S',
                            style: TextStyle(
                                color: Color(0xff57C0DE), fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: height * 0.04,
                            backgroundColor: Colors.black45,
                            child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: height * 0.038,
                                backgroundImage:
                                    AssetImage('images/cargo-truck.png')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'ARMOTALE',
                              style: TextStyle(
                                  color: Color(0xff57C0DE), fontSize: 16),
                            ),
                          ),
                          Text(
                            'CARRIERS',
                            style: TextStyle(
                                color: Color(0xff57C0DE), fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: height * 0.04,
                            backgroundColor: Colors.black45,
                            child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: height * 0.038,
                                backgroundImage:
                                    AssetImage('images/truck.png')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'ARMOTALE',
                              style: TextStyle(
                                  color: Color(0xff57C0DE), fontSize: 16),
                            ),
                          ),
                          Text(
                            'MOVERS',
                            style: TextStyle(
                                color: Color(0xff57C0DE), fontSize: 10),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          customsizedbox,
          Expanded(
            flex: 34,
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      'Payment Info',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Delivery Charges'), Text('0.0')],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Service fee'), Text('0.0')],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Amount to pay'), Text('0.0')],
                    ),
                  ),
                ],
              ),
            ),
          ),
          customsizedbox,
          Expanded(
              flex: 15,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  child: Center(
                      child: Text(
                    'Proceed to Payment',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xff4C5A92)),
                  )),
                  color: Color(0xff7B92EF),
                ),
              ))
        ],
      ),
    );
  }
}
