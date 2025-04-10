import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  RxBool obscureText = true.obs;
  RxBool isRemember = false.obs;
  TextEditingController fullNameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController phoneC = TextEditingController();
  TextEditingController addressC = TextEditingController();
  TextEditingController userNameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    fullNameC.dispose();
    emailC.dispose();
    phoneC.dispose();
    addressC.dispose();
    userNameC.dispose();
    passwordC.dispose();
  }

  void hidePass() {
    obscureText.value = !obscureText.value;
  }
}
