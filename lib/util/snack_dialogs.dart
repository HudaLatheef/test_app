import 'package:flutter/material.dart';
import 'package:test_app/util/color.dart';

class SnackBarDialog {
  static void showSnackBar(BuildContext context, String msg,
      {bool isNormal = true, int seconds = 3, Color? bgColor}) {
    final scaffold = ScaffoldMessenger.of(context);
    final snackBar = SnackBar(
      content: Text(
        msg,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      duration: Duration(seconds: seconds),
      backgroundColor: bgColor ??
          (isNormal ? ConstantColor.primarybackground : Colors.redAccent),
      action: SnackBarAction(
        label: '',
        onPressed: () {},
      ),
    );
    scaffold.showSnackBar(snackBar);
  }

  static void showNotImplementedMsg(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    final snackBar = SnackBar(
      content: const Text(
        "This action does not implemented!",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: ConstantColor.primarybackground,
    );
    scaffold.showSnackBar(snackBar);
  }
}
