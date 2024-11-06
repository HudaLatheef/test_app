import 'package:flutter/widgets.dart';

class URLConstants {
  static BuildContext? _context;

  static void setContext(BuildContext context) {
    _context = context;
  }

  static BuildContext? get context => _context;
  static String API_VERSION = "1.0.0";

  static String baseURL = "https://api.escuelajs.co/api/v1";

  static String products = "$baseURL/products";

  static String categories = "$baseURL/categories";
}
