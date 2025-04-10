import 'package:ecommerce_demo/controller/bottom_widget_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_demo/constants/app_colors.dart';
import 'package:ecommerce_demo/constants/app_text_styles.dart';
import 'package:ecommerce_demo/constants/app_images.dart';
import 'package:ecommerce_demo/constants/app_padding.dart';

class CommonBottomWidget extends StatelessWidget {
  final BottomWidgetController controller =
      Get.put<BottomWidgetController>(BottomWidgetController());

  CommonBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      height: AppSizes.height * 0.5,
      width: AppSizes.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Center(child: Image.asset(AppImages.appLogo, height: 80)),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                height: AppSizes.height * 0.06,
                width: AppSizes.width,
                child: ListView.builder(
                  itemCount: controller.bottomNavItems.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var data = controller.bottomNavItems[index];
                    return Obx(
                      () => InkWell(
                        onTap: () {
                          controller.bottomNavCurrentIndex.value = index;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                controller.bottomNavCurrentIndex.value == index
                                    ? AppColors.white
                                    : AppColors.primaryColor,
                            border: Border.all(color: AppColors.white),
                          ),
                          alignment: Alignment.center,
                          height: AppSizes.height * 0.06,
                          width: AppSizes.width * 0.22,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: Text(
                              data,
                              style: AppTextStyles.ts14BB(context).copyWith(
                                color: controller.bottomNavCurrentIndex.value ==
                                        index
                                    ? AppColors.black
                                    : AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            Obx(
              () => controller.bottomNavCurrentIndex.value == 0
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _bottomNavText("What's New", context),
                        _bottomNavText("Sales", context),
                        _bottomNavText("Top Picks", context),
                      ],
                    )
                  : const SizedBox(),
            ),
            const Spacer(),
            Center(
              child: Text(
                "© 2025 KDigitalCurry. All rights reserved.",
                style: AppTextStyles.ts16WB(context),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavText(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Text(
        text,
        style:
            AppTextStyles.ts16WB(context).copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
