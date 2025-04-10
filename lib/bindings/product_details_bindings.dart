import 'package:ecommerce_demo/controller/product_details_controller.dart';
import 'package:get/get.dart';

class ProductDetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductDetailsController>(() => ProductDetailsController());
  }
}
