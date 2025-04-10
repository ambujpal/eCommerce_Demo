import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_demo/common_widgets/collection_widget.dart';
import 'package:ecommerce_demo/common_widgets/common_bottom_widget.dart';
import 'package:ecommerce_demo/common_widgets/expantiontile_widget.dart';
import 'package:ecommerce_demo/constants/app_colors.dart';
import 'package:ecommerce_demo/constants/app_icons.dart';
import 'package:ecommerce_demo/constants/app_text_styles.dart';
import 'package:ecommerce_demo/controller/home_controller.dart';
import 'package:ecommerce_demo/routes/app_routes_name.dart';
import 'package:ecommerce_demo/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: controller.scaffoldKey,
        backgroundColor: AppColors.white,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: AppColors.primaryColor),
                child:
                    Text("Drawer Header", style: AppTextStyles.ts20WB(context)),
              ),
              ListTile(
                  title: Text("Item 1", style: AppTextStyles.ts16BB(context))),
              ListTile(
                  title: Text("Item 2", style: AppTextStyles.ts16BB(context))),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: controller.openDrawer,
                          child: Image.asset(
                            AppIcons.menuIc,
                            height: 25,
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () =>
                                  Get.toNamed(AppRoutesName.profilePage),
                              child: Image.asset(
                                AppIcons.profileIc,
                                height: 30,
                              ),
                            ),
                            const SizedBox(width: 20),
                            InkWell(
                              onTap: () => Get.toNamed(AppRoutesName.cartPage),
                              child: Image.asset(
                                AppIcons.cartIc,
                                height: 30,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    CustomSearchField(
                      controller: controller.searchC,
                      hintText: "Search",
                    ),
                  ],
                ),
              ),
              Obx(
                () => CarouselSlider(
                  items: controller.bannerList
                      .map(
                        (banner) => Image.asset(
                          banner,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    height: 250,
                    initialPage: controller.currentIndex.value,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      controller.currentIndex.value = index;
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  controller.bannerList.length,
                  (index) => Obx(
                    () => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: controller.currentIndex.value == index
                            ? AppColors.primaryColor
                            : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Shop By Brands",
                        style: AppTextStyles.ts18RB(context)),
                    const SizedBox(height: 10),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.brandList.length,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 150,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  strokeAlign: 0.5, color: AppColors.grey),
                              color: AppColors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              controller.brandList[index],
                              height: 100,
                            ),
                          ),
                        );
                      },
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text("View All",
                            style: AppTextStyles.ts16RB(context)),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text("Browse Category",
                        style: AppTextStyles.ts18RB(context)),
                    const SizedBox(height: 15),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.categoryList.length,
                      itemBuilder: (context, index) {
                        var categoryData = controller.categoryList[index];
                        return Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                categoryData["image"],
                                height: 200,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Text(categoryData["title"],
                                  style: AppTextStyles.ts18BB(context)
                                      .copyWith(color: AppColors.white)),
                            ),
                          ],
                        );
                      },
                    ),
                    const SizedBox(height: 25),
                    Obx(
                      () => CarouselSlider(
                        items: controller.offerList
                            .map(
                              (offerImg) => Image.asset(
                                offerImg,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            )
                            .toList(),
                        options: CarouselOptions(
                          height: 200,
                          aspectRatio: 16 / 9,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text("Shop By Category",
                        style: AppTextStyles.ts18RB(context)),
                    const SizedBox(height: 10),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.shopCategoryList.length,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (context, index) {
                        var data = controller.shopCategoryList[index];
                        return InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutesName.productListPage);
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                data["image"],
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                data["title"],
                                style: AppTextStyles.ts16RB(context),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              CollectionWidget(
                collectionTitle: "Men's Cloth Collection",
                collectionList: controller.mensCollectionList,
              ),
              const SizedBox(height: 30),
              CollectionWidget(
                collectionTitle: "Women's Cloth Collection",
                collectionList: controller.womensCollectionList,
              ),
              const SizedBox(height: 30),
              Center(
                child: Text(
                  "Frequently Asked Questions",
                  style: AppTextStyles.ts18BB(context),
                ),
              ),
              const ExpantiontileWidget(
                title: "How can I place an order?",
                content:
                    "Yes, you can try us for free for 30 days. If you want, we'll provide you with a free, personalized 30-minute onboarding call to get you up and running as soon as possible.",
              ),
              const ExpantiontileWidget(
                title: "Is COD (Cash on Delivery) available?",
                content:
                    "Yes, you can try us for free for 30 days. If you want, we'll provide you with a free, personalized 30-minute onboarding call to get you up and running as soon as possible.",
              ),
              const ExpantiontileWidget(
                title: "What is your cancellation policy?",
                content:
                    "Yes, you can try us for free for 30 days. If you want, we'll provide you with a free, personalized 30-minute onboarding call to get you up and running as soon as possible.",
              ),
              const ExpantiontileWidget(
                title: "What is your return policy?",
                content:
                    "Yes, you can try us for free for 30 days. If you want, we'll provide you with a free, personalized 30-minute onboarding call to get you up and running as soon as possible.",
              ),
              const ExpantiontileWidget(
                title: "Do You Offer International Shipping",
                content:
                    "Yes, you can try us for free for 30 days. If you want, we'll provide you with a free, personalized 30-minute onboarding call to get you up and running as soon as possible.",
              ),
              const SizedBox(height: 30),
              CommonBottomWidget()
            ],
          ),
        ),
      ),
    );
  }
}
