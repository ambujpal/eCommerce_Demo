import 'package:ecommerce_demo/constants/app_colors.dart';
import 'package:ecommerce_demo/constants/app_icons.dart';
import 'package:ecommerce_demo/constants/app_padding.dart';
import 'package:ecommerce_demo/constants/app_text_styles.dart';
import 'package:ecommerce_demo/controller/products_listing_controller.dart';
import 'package:ecommerce_demo/routes/app_routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductListingPage extends GetView<ProductsListingController> {
  const ProductListingPage({super.key});

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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: AppColors.primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            AppIcons.soertByIc,
                            height: 20,
                            color: AppColors.white,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 15.0),
                          Text(
                            "Sort By",
                            style: AppTextStyles.ts16BB(context)
                                .copyWith(color: AppColors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    color: AppColors.primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 12),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            AppIcons.filterIc,
                            height: 15,
                            color: AppColors.white,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 15.0),
                          Text(
                            "Filter",
                            style: AppTextStyles.ts16BB(context)
                                .copyWith(color: AppColors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Obx(
                () => controller.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Expanded(
                        child: GridView.builder(
                          padding: const EdgeInsets.all(10),
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: AppSizes.height * 0.3,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 0.5,
                          ),
                          itemCount: controller.products.length,
                          itemBuilder: (context, index) {
                            final product = controller.products[index];

                            return LayoutBuilder(
                              builder: (context, constraints) {
                                return InkWell(
                                  onTap: () {
                                    Get.toNamed(
                                      AppRoutesName.productDetailsPage,
                                      arguments: product,
                                    );
                                  },
                                  child: SizedBox(
                                    width: constraints.maxWidth,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: AppColors.grey
                                                    .withOpacity(0.5),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Image.network(
                                                  // AppImages.menImg1,
                                                  product.image!,
                                                  height: 150,
                                                  width: constraints.maxWidth,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              right: 8,
                                              top: 8,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColors.white,
                                                  shape: BoxShape.circle,
                                                ),
                                                padding:
                                                    const EdgeInsets.all(6),
                                                child: Icon(
                                                  Icons
                                                      .favorite_border_outlined,
                                                  color: AppColors.grey,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          product.title!,
                                          style: AppTextStyles.ts16BB(context),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          product.description!,
                                          style: AppTextStyles.ts14RB(context),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(height: 6),
                                        SizedBox(
                                          width: constraints.maxWidth,
                                          child: Wrap(
                                            spacing: 8,
                                            children: [
                                              Text(
                                                "₹ ${product.price}",
                                                style: AppTextStyles.ts14BB(
                                                    context),
                                              ),
                                              Text(
                                                "₹899",
                                                style: AppTextStyles.ts14BB(
                                                        context)
                                                    .copyWith(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: AppColors.grey,
                                                ),
                                              ),
                                              Text(
                                                "(30% OFF)",
                                                style: AppTextStyles.ts14BB(
                                                        context)
                                                    .copyWith(
                                                  color: AppColors.primaryColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
