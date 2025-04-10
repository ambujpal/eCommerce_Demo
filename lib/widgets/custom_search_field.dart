import 'package:ecommerce_demo/constants/app_colors.dart';
import 'package:ecommerce_demo/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSearchField extends StatelessWidget {
  final RxString searchText = ''.obs;
  final TextEditingController controller;
  final String hintText;
  final TextStyle? hintTextStyle;
  final Function(String)? onChanged;
  final Function()? onTap;
  final Function()? onClear;
  final bool readOnly;

  CustomSearchField({
    super.key,
    required this.controller,
    required this.hintText,
    this.hintTextStyle,
    this.onChanged,
    this.onTap,
    this.onClear,
    this.readOnly = false,
  }) {
    controller.addListener(() {
      searchText.value = controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        controller: controller,
        readOnly: readOnly,
        onChanged: (value) {
          searchText.value = value;
          if (onChanged != null) onChanged!(value);
        },
        onTap: onTap,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          hintText: hintText,
          hintStyle: hintTextStyle ??
              AppTextStyles.ts14RB(context).copyWith(
                color: AppColors.grey,
              ),
          prefixIcon: const Icon(Icons.search, color: Colors.grey),
          suffixIcon: searchText.value.isNotEmpty
              ? InkWell(
                  onTap: () {
                    controller.clear();
                    searchText.value = '';
                    if (onClear != null) onClear!();
                  },
                  child: const Icon(Icons.clear, color: Colors.grey),
                )
              : null,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
