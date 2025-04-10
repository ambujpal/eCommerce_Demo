import 'package:country_code_picker/country_code_picker.dart';
import 'package:ecommerce_demo/constants/app_colors.dart';
import 'package:ecommerce_demo/constants/app_images.dart';
import 'package:ecommerce_demo/constants/app_padding.dart';
import 'package:ecommerce_demo/constants/app_text_styles.dart';
import 'package:ecommerce_demo/controller/signup_controller.dart';
import 'package:ecommerce_demo/routes/app_routes_name.dart';
import 'package:ecommerce_demo/widgets/custom_elevated_button.dart';
import 'package:ecommerce_demo/widgets/custom_rich_text.dart';
import 'package:ecommerce_demo/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends GetView<SignupController> {
  const SignupPage({super.key});

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
                          Text(
                            "Create a Account",
                            style: AppTextStyles.ts20RB(context),
                          ),
                          const SizedBox(height: 50),
                          CustomRichText(
                            title: "Full Name",
                            subTitle: "*",
                            subTitleStyle:
                                AppTextStyles.ts14BB(context).copyWith(
                              color: AppColors.red,
                            ),
                          ),
                          const SizedBox(height: 10),
                          CustomTextformfield(
                            hintText: "Enter Full Name",
                            controller: controller.fullNameC,
                          ),
                          const SizedBox(height: 30),
                          CustomRichText(
                            title: "Phone Number",
                            subTitle: "*",
                            subTitleStyle:
                                AppTextStyles.ts14BB(context).copyWith(
                              color: AppColors.red,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.grey),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 80,
                                  height: 40,
                                  child: Padding(
                                    padding: EdgeInsets.zero,
                                    child: CountryCodePicker(
                                      margin: EdgeInsets.zero,
                                      padding: EdgeInsets.zero,
                                      enabled: false,
                                      onChanged: (c) => c.dialCode,
                                      initialSelection: 'IN',
                                      showCountryOnly: false,
                                      showOnlyCountryWhenClosed: false,
                                      showFlag: false,
                                      showFlagMain: false,
                                      showDropDownButton: true,
                                      textStyle: AppTextStyles.ts14MB(context),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 5.0, horizontal: 8.0),
                                      hintText: "Enter Phone Number",
                                      hintStyle: AppTextStyles.ts14RB(context)
                                          .copyWith(color: AppColors.grey),
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          CustomRichText(
                            title: "Email",
                            subTitle: "*",
                            subTitleStyle:
                                AppTextStyles.ts14BB(context).copyWith(
                              color: AppColors.red,
                            ),
                          ),
                          const SizedBox(height: 10),
                          CustomTextformfield(
                            hintText: "Enter your email",
                            controller: controller.emailC,
                          ),
                          const SizedBox(height: 30),
                          CustomRichText(
                            title: "Address",
                            subTitle: "*",
                            subTitleStyle:
                                AppTextStyles.ts14BB(context).copyWith(
                              color: AppColors.red,
                            ),
                          ),
                          const SizedBox(height: 10),
                          CustomTextformfield(
                            hintText: "Enter  address",
                            controller: controller.addressC,
                          ),
                          const SizedBox(height: 30),
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
                            hintText: "Enter  User Name",
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
                          const SizedBox(height: 80),
                          CustomElevatedButton(
                            bgColor: AppColors.primaryColor,
                            title: "Create Account",
                            onPressed: () {},
                          ),
                          Center(
                            child: TextButton(
                              onPressed: () {
                                Get.offAllNamed(AppRoutesName.loginPage);
                              },
                              child: Text(
                                "Already have an account? Login",
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
