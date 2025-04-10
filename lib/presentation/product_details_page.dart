import 'package:ecommerce_demo/constants/app_icons.dart';
import 'package:ecommerce_demo/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Shirt",
          style: AppTextStyles.ts16BB(context),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(
              AppIcons.cartIc,
              height: 25,
            ),
          )
        ],
      ),
    ));
  }
}
