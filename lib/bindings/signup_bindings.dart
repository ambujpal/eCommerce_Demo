import 'package:ecommerce_demo/controller/signup_controller.dart';
import 'package:get/get.dart';

class SignupBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(() => SignupController());
  }
}
