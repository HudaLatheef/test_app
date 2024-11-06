import 'package:flutter/material.dart';

Widget backgroundGradientContainer(BuildContext context) {
  return Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height,
    decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [])),
  );
}
