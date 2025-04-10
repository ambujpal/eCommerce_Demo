import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSizes {
  static double get height => MediaQuery.of(Get.context!).size.height;
  static double get width => MediaQuery.of(Get.context!).size.width;
  static EdgeInsets get padding => MediaQuery.of(Get.context!).padding;

  // Extract horizontal and vertical padding separately
  static double get horizontalPadding => padding.left + padding.right;
  static double get verticalPadding => padding.top + padding.bottom;
}
