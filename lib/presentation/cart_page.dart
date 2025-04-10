import 'package:ecommerce_demo/constants/app_text_styles.dart';
import 'package:ecommerce_demo/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends GetView<CartController> {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Text(
          "Cart Page",
          style: AppTextStyles.ts18MB(context),
        ),
      ),
    ));
  }
}
