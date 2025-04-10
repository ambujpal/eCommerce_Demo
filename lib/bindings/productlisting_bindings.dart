import 'package:ecommerce_demo/controller/products_listing_controller.dart';
import 'package:get/get.dart';

class ProductlistingBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductsListingController>(() => ProductsListingController());
  }
}
