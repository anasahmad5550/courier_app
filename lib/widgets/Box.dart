import 'package:courier_app/pages/order.dart';
import 'package:flutter/material.dart';
import 'package:courier_app/pages/senderAndReciever.dart';

class Box extends StatelessWidget {
  final String title;
  final String image;
  Box({this.title, this.image});
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (_) {
            return SenderReciever();
          },
        ));
      },
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                child: Image.asset(
                  'images/' + image,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                title,
                style: TextStyle(color: Color(0xff3C487F), fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
