import 'package:ecommerce_demo/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  RxBool isClear = false.obs;
  RxInt currentIndex = 0.obs;
  TextEditingController searchC = TextEditingController();

  RxList bannerList = [
    AppImages.bannerImg,
    AppImages.bannerImg,
    AppImages.bannerImg,
    AppImages.bannerImg,
    AppImages.bannerImg,
  ].obs;
  List brandList = [
    AppImages.logoImg1,
    AppImages.logoImg2,
    AppImages.logoImg3,
    AppImages.logoImg4,
    AppImages.logoImg5,
    AppImages.logoImg6,
  ];
  RxList offerList = [
    AppImages.offerImg,
    AppImages.offerImg,
    AppImages.offerImg,
    AppImages.offerImg,
    AppImages.offerImg,
  ].obs;

  List<Map<String, dynamic>> categoryList = [
    {"image": AppImages.mensImg, "title": "Mens"},
    {"image": AppImages.womensImg, "title": "Women"},
    {"image": AppImages.kidsImg, "title": "Kids"},
  ];

  List<Map<String, dynamic>> shopCategoryList = [
    {"image": AppImages.imageImg, "title": "Watches"},
    {"image": AppImages.image36Img, "title": "Shoes"},
    {"image": AppImages.imageImg1, "title": "Heels"},
    {"image": AppImages.image42Img, "title": "Beauty & Make Up"},
    {"image": AppImages.image39Img, "title": "Bags & Bag Packs"},
    {"image": AppImages.image34Img, "title": "Jewellery"},
    {"image": AppImages.image43Img, "title": "Sunglasses"},
    {"image": AppImages.image35Img, "title": "Perfume"},
  ];

  List<Map<String, dynamic>> mensCollectionList = [
    {
      "image": AppImages.menImg1,
      "title": "Crimson Crest Shirt",
      "offerPrice": "₹ 590",
      "price": "₹ 690"
    },
    {
      "image": AppImages.menImg2,
      "title": "Indigo Edge Denim Jacket",
      "offerPrice": "₹ 590",
      "price": "₹ 690"
    },
    {
      "image": AppImages.menImg1,
      "title": "Crimson Crest Shirt",
      "offerPrice": "₹ 590",
      "price": "₹ 690"
    },
    {
      "image": AppImages.menImg2,
      "title": "Indigo Edge Denim Jacket",
      "offerPrice": "₹ 590",
      "price": "₹ 690"
    },
    {
      "image": AppImages.menImg1,
      "title": "Crimson Crest Shirt",
      "offerPrice": "₹ 590",
      "price": "₹ 690"
    },
    {
      "image": AppImages.menImg2,
      "title": "Indigo Edge Denim Jacket",
      "offerPrice": "₹ 590",
      "price": "₹ 690"
    },
    {
      "image": AppImages.menImg1,
      "title": "Crimson Crest Shirt",
      "offerPrice": "₹ 590",
      "price": "₹ 690"
    },
    {
      "image": AppImages.menImg2,
      "title": "Indigo Edge Denim Jacket",
      "offerPrice": "₹ 590",
      "price": "₹ 690"
    },
    {
      "image": AppImages.menImg1,
      "title": "Crimson Crest Shirt",
      "offerPrice": "₹ 590",
      "price": "₹ 690"
    },
    {
      "image": AppImages.menImg2,
      "title": "Indigo Edge Denim Jacket",
      "offerPrice": "₹ 590",
      "price": "₹ 690"
    },
  ];

  List<Map<String, dynamic>> womensCollectionList = [
    {
      "image": AppImages.womenImg1,
      "title": "Crimson Bloom Crop Top",
      "offerPrice": "₹ 590",
      "price": "₹ 690"
    },
    {
      "image": AppImages.womenImg2,
      "title": "Red Radiance Blazer",
      "offerPrice": "₹ 590",
      "price": "₹ 690"
    },
  ];

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  void dispose() {
    super.dispose();
    searchC.dispose();
  }
}
