import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  // dynamic width padding and margin
  static double width10 = screenWidth / 33.0.h;
  static double width12 = screenWidth / 32.5;
  static double width15 = screenWidth / 56.26;
  static double width20 = screenWidth / 19.5;
  static double width30 = screenWidth / 9.75;
  static double width50 = screenWidth / 7.8;
  static double width60 = screenWidth / 6.5;
  static double width90 = screenWidth / 4.33;
  static double width100 = screenWidth / 3.9;
  static double width120 = screenWidth / 3.25;
  static double width230 = screenWidth / 1.69;

  // dynamic height
  static double height10 = screenHeight / 84.4;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height40 = screenHeight / 21.1;
  static double height50 = screenHeight / 16.88;
  static double height75 = screenHeight / 11.25;
  static double height100 = screenHeight / 8.44;
  static double height120 = screenHeight / 7.03;
  static double height230 = screenHeight / 3.66;
  static double height260 = screenHeight / 3.51;
  static double height300 = screenHeight / 2.81;

  // font size
  static double fontSize10 = screenHeight / 84.4;
  static double fontSize12 = screenHeight / 70.33;
  static double fontSize14 = screenHeight / 60.28;
  static double fontSize16 = screenHeight / 52.75;
  static double fontSize18 = screenHeight / 45.88;
  static double fontSize20 = screenHeight / 42.2;
  static double fontSize24 = screenHeight / 35.16;

  // radius
  static double radius10 = screenHeight / 84.4;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;
  static double radius50 = screenHeight / 16.88;

  // word height
  static double wordHeight1point5 = screenHeight / 562.66;
  static double wordHeight1 = screenHeight / 844;
}
