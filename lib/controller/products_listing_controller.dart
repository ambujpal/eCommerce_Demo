import 'dart:convert';

import 'package:ecommerce_demo/constants/app_colors.dart';
import 'package:ecommerce_demo/model/product_model.dart';
import 'package:ecommerce_demo/services/base_client.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsListingController extends GetxController {
  var isLoading = false.obs;
  List<ProductResponseModel> products = [];
  @override
  void onInit() {
    super.onInit();
    getProductData();
  }

  // Future<void> getProductData() async {
  //   try {
  //     isLoading.value = true;
  //     var response =
  //         await ApiService.getRequest("https://fakestoreapi.com/products");
  //     var responseJson = productResponseModelFromJson(response);
  //     debugPrint("Response json decode: $responseJson");
  //     if (responseJson is List<ProductResponseModel>) {
  //       products.clear();
  //       products.addAll(responseJson);
  //       debugPrint("Response Data: $products");
  //     } else {}
  //   } catch (e) {
  //     Get.snackbar(
  //       "Error",
  //       e.toString(),
  //       backgroundColor: AppColors.primaryColor,
  //       colorText: AppColors.white,
  //       snackPosition: SnackPosition.BOTTOM,
  //     );
  //     debugPrint("Error: ${e.toString}");
  //   } finally {
  //     isLoading.value = false;
  //   }
  // }

  Future<void> getProductData() async {
    try {
      isLoading.value = true;

      var response =
          await ApiService.getRequest("https://fakestoreapi.com/products");

      debugPrint("Raw API Response: $response");

      if (response is List) {
        // Directly parsing if response is already a List
        products.clear();
        products.addAll(
            response.map((e) => ProductResponseModel.fromJson(e)).toList());
        debugPrint("Parsed Response: $products");
      } else if (response is String) {
        // If response is a string, decode and then parse
        var decodedResponse = jsonDecode(response);
        if (decodedResponse is List) {
          products.clear();
          products.addAll(decodedResponse
              .map((e) => ProductResponseModel.fromJson(e))
              .toList());
          debugPrint("Parsed Response: $products");
        } else {
          throw Exception("Invalid data format received from API.");
        }
      } else {
        throw Exception("Unexpected response type: ${response.runtimeType}");
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        backgroundColor: AppColors.primaryColor,
        colorText: AppColors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
      debugPrint("Error: ${e.toString()}");
    } finally {
      isLoading.value = false;
    }
  }
}
