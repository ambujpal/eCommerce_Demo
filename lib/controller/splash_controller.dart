import 'package:ecommerce_demo/constants/common_functions.dart';
import 'package:ecommerce_demo/constants/storage_key.dart';
import 'package:ecommerce_demo/routes/app_routes_name.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  late bool isLogin;
  @override
  void onInit() {
    super.onInit();
    isLogin = CommonFunctions.readData(StorageKey.isLogin) ?? false;
    handleNavigation();
  }

  void handleNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      if (isLogin == true) {
        Get.offAllNamed(AppRoutesName.homePage);
      } else {
        Get.offAllNamed(AppRoutesName.loginPage);
      }
    });
  }
}
