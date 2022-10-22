import 'package:flutter/material.dart';

class CustomClippedShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.7723625, size.height * 0.0006000);
    path0.cubicTo(
        size.width * 0.7625250,
        size.height * 0.1989000,
        size.width * 0.7990500,
        size.height * 0.1874500,
        size.width * 0.8299750,
        size.height * 0.3109000);
    path0.cubicTo(
        size.width * 0.8466500,
        size.height * 0.4386500,
        size.width * 0.8182125,
        size.height * 0.5376500,
        size.width * 0.8173750,
        size.height * 0.6435000);
    path0.cubicTo(
        size.width * 0.8208875,
        size.height * 0.8062500,
        size.width * 0.8613250,
        size.height * 0.8267500,
        size.width * 0.8791500,
        size.height * 0.7684500);
    path0.cubicTo(
        size.width * 0.9004625,
        size.height * 0.7050500,
        size.width * 0.9180500,
        size.height * 0.6226500,
        size.width * 0.9383500,
        size.height * 0.6408000);
    path0.cubicTo(
        size.width * 0.9558625,
        size.height * 0.6347500,
        size.width * 0.9861625,
        size.height * 0.7974500,
        size.width * 1.0001125,
        size.height * 0.7917500);
    path0.quadraticBezierTo(size.width * 0.9999250, size.height * 0.5941500,
        size.width * 0.9993625, size.height * 0.0006500);
    path0.quadraticBezierTo(size.width * 0.9428375, size.height * 0.0006500,
        size.width * 0.7723625, size.height * 0.0006000);
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
