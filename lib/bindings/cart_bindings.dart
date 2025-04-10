import 'package:ecommerce_demo/controller/cart_controller.dart';
import 'package:get/get.dart';

class CartBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartController>(() => CartController());
  }
}
