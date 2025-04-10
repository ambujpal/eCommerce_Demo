import 'package:ecommerce_demo/constants/app_colors.dart';
import 'package:ecommerce_demo/constants/app_images.dart';
import 'package:ecommerce_demo/constants/app_padding.dart';
import 'package:ecommerce_demo/constants/app_text_styles.dart';
import 'package:ecommerce_demo/controller/login_controller.dart';
import 'package:ecommerce_demo/routes/app_routes_name.dart';
import 'package:ecommerce_demo/widgets/custom_elevated_button.dart';
import 'package:ecommerce_demo/widgets/custom_rich_text.dart';
import 'package:ecommerce_demo/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: AppSizes.height * 0.3),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30),
                          Center(
                              child: Text(
                            "Login",
                            style: AppTextStyles.ts20BB(context),
                          )),
                          const SizedBox(height: 50),
                          CustomRichText(
                            title: "User Name",
                            subTitle: "*",
                            subTitleStyle:
                                AppTextStyles.ts14BB(context).copyWith(
                              color: AppColors.red,
                            ),
                          ),
                          const SizedBox(height: 10),
                          CustomTextformfield(
                            hintText: "Enter User Name",
                            controller: controller.userNameC,
                          ),
                          const SizedBox(height: 30),
                          CustomRichText(
                            title: "Password",
                            subTitle: "*",
                            subTitleStyle:
                                AppTextStyles.ts14BB(context).copyWith(
                              color: AppColors.red,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Obx(
                            () => CustomTextformfield(
                              prefixIcon: Icons.lock,
                              suffixIconOnTap: controller.hidePass,
                              suffixIcon: controller.obscureText.value == true
                                  ? Icons.visibility
                                  : Icons.visibility_off_outlined,
                              obscureText: controller.obscureText.value,
                              hintText: "Enter Password",
                              controller: controller.passwordC,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Obx(
                                    () => Checkbox(
                                      value: controller.isRemember.value,
                                      onChanged: (val) {
                                        controller.isRemember.value = val!;
                                      },
                                    ),
                                  ),
                                  Text(
                                    "Remember Me",
                                    style: AppTextStyles.ts14MB(context),
                                  ),
                                ],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forgot Password ?",
                                  style: AppTextStyles.ts14MB(context),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 50),
                          CustomElevatedButton(
                            bgColor: AppColors.primaryColor,
                            title: "Login",
                            onPressed: () {
                              Get.toNamed(AppRoutesName.homePage);
                            },
                          ),
                          Center(
                            child: TextButton(
                              onPressed: () {
                                Get.offAllNamed(AppRoutesName.signupPage);
                              },
                              child: Text(
                                "Don't have an account? Sign Up",
                                style: AppTextStyles.ts14MB(context),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: AppSizes.width * 0.33,
              top: AppSizes.height * 0.1,
              child: Image.asset(
                AppImages.appLogo,
                height: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.image_not_supported,
                    color: AppColors.grey,
                    size: 50,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
