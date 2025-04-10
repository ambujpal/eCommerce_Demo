import 'package:ecommerce_demo/common_widgets/common_bottom_widget.dart';
import 'package:ecommerce_demo/common_widgets/profile_items_widget.dart';
import 'package:ecommerce_demo/constants/app_colors.dart';
import 'package:ecommerce_demo/constants/app_icons.dart';
import 'package:ecommerce_demo/constants/app_images.dart';
import 'package:ecommerce_demo/constants/app_padding.dart';
import 'package:ecommerce_demo/constants/app_text_styles.dart';
import 'package:ecommerce_demo/controller/profile_controller.dart';
import 'package:ecommerce_demo/routes/app_routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        key: controller.scaffoldKey,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
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
                        Padding(
                          padding: EdgeInsets.only(left: AppSizes.width * 0.2),
                          child: InkWell(
                            onTap: () =>
                                Get.offAllNamed(AppRoutesName.homePage),
                            child: Image.asset(
                              AppImages.appLogo,
                              color: AppColors.primaryColor,
                              height: 30,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () => Get.toNamed(AppRoutesName.cartPage),
                          child: Image.asset(
                            AppIcons.cartIc,
                            height: 30,
                          ),
                        )
                      ],
                    ),
                    Divider(color: AppColors.grey),
                    const SizedBox(height: 50),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: AppColors.grey.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          AppImages.menImg2,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Sipho Nkosi",
                      style: AppTextStyles.ts16BB(context),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            visualDensity: const VisualDensity(
                                horizontal: -4, vertical: -4)),
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              AppIcons.editIc,
                              height: 20,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              "Edit",
                              style: AppTextStyles.ts16BB(context),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ProfileItemsWidget(
                onPressed: () {},
                icons: AppIcons.myOrderIc,
                title: "My Orders",
              ),
              ProfileItemsWidget(
                onPressed: () {},
                icons: AppIcons.wishlistIc,
                title: "Wishlist",
              ),
              ProfileItemsWidget(
                onPressed: () {},
                icons: AppIcons.locationIc,
                title: "My Address",
              ),
              ProfileItemsWidget(
                onPressed: () {},
                icons: AppIcons.contactUsIc,
                title: "Contact Us",
              ),
              ProfileItemsWidget(
                onPressed: () {},
                icons: AppIcons.logoutIc,
                title: "Logout",
              ),
              const SizedBox(height: 10),
              CommonBottomWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
