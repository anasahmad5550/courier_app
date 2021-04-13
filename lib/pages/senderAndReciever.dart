import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'order.dart';

class SenderReciever extends StatefulWidget {
  @override
  _SenderRecieverState createState() => _SenderRecieverState();
}

var customsizedbox = Expanded(
  flex: 1,
  child: SizedBox(
    child: Container(
      color: Color(0xffF8F9FD),
    ),
  ),
);
var header = Expanded(
  flex: 10,
  child: Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Icon(Icons.shopping_cart),
                  Text(
                    '  Recipients details',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Text(
              'Remove',
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            )
          ],
        ),
      )),
);

class _SenderRecieverState extends State<SenderReciever> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    final textFieldheight = height * 0.072;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            header,
            customsizedbox,
            Expanded(
                flex: 40,
                child: SingleChildScrollView(
                  child: Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Container(
                              height: textFieldheight,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'First Name',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Container(
                              height: textFieldheight,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Family Name',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Container(
                              height: textFieldheight,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'E-mail',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Container(
                              height: textFieldheight,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Phone',
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                )),
            header,
            customsizedbox,
            Expanded(
              flex: 40,
              child: SingleChildScrollView(
                child: Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Container(
                            height: textFieldheight,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'First Name',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Container(
                            height: textFieldheight,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Family Name',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Container(
                            height: textFieldheight,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'E-mail',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Container(
                            height: textFieldheight,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Phone',
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Expanded(
                flex: 12,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) {
                        return Order();
                      },
                    ));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      'Continue',
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
      ),
    );
  }
}
