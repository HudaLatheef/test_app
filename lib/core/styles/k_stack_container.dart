import 'dart:ui';

import 'package:flutter/material.dart';

Widget gradientStackContainer({
  required BuildContext context,
  required Widget child,
}) {
  return Stack(
    children: <Widget>[
      Positioned.fill(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: .0, sigmaY: 2.0),
          child: child,
        ),
      )
    ],
  );
}
