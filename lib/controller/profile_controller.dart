import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
  }
}
