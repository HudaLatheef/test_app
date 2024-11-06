import 'package:flutter/material.dart';

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height - 80);
    path.quadraticBezierTo(
        size.width / 4, size.height - 5, size.width / 2, size.height);

    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 3, size.height);
    path.quadraticBezierTo(size.width - (size.width / 3), size.height + 20,
        size.width, size.height - 80);

    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
