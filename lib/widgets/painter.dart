import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color(0xff1c2954)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4626625, size.height * 0.0005000);
    path_0.cubicTo(
        size.width * 0.5033875,
        size.height * 0.1633000,
        size.width * 0.4459000,
        size.height * 0.2718333,
        size.width * 0.4612500,
        size.height * 0.4633333);
    path_0.cubicTo(
        size.width * 0.5082875,
        size.height * 0.6552000,
        size.width * 0.6018000,
        size.height * 0.6236333,
        size.width * 0.6265000,
        size.height * 0.5582667);
    path_0.cubicTo(
        size.width * 0.6539125,
        size.height * 0.4971000,
        size.width * 0.7328750,
        size.height * 0.4154000,
        size.width * 0.8091750,
        size.height * 0.5688667);
    path_0.cubicTo(
        size.width * 0.8728750,
        size.height * 0.6833333,
        size.width * 0.7547500,
        size.height * 0.8736667,
        size.width * 0.8901500,
        size.height);
    path_0.cubicTo(
        size.width * 0.9368500,
        size.height * 1.0006000,
        size.width * 0.9996500,
        size.height * 0.9881333,
        size.width,
        size.height * 0.8234000);
    path_0.quadraticBezierTo(
        size.width * 1.0008125, size.height * 0.5793000, size.width, 0);
    path_0.quadraticBezierTo(size.width * 0.8375375, size.height * 0.0001333,
        size.width * 0.4626625, size.height * 0.0005000);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
