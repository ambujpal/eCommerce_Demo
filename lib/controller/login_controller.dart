import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool obscureText = true.obs;
  RxBool isRemember = false.obs;
  TextEditingController userNameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    userNameC.dispose();
    passwordC.dispose();
  }

  void hidePass() {
    obscureText.value = !obscureText.value;
  }
}
