import 'package:ecommerce_demo/constants/app_colors.dart';
import 'package:ecommerce_demo/constants/app_images.dart';
import 'package:ecommerce_demo/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Center(
          child: Image.asset(
            AppImages.appLogo,
            height: 200,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Icon(
                Icons.image_not_supported_outlined,
                color: AppColors.grey,
                size: 100,
              );
            },
          ),
        ),
      ),
    );
  }
}
