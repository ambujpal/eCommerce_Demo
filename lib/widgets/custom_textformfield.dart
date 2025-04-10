import 'package:ecommerce_demo/constants/app_colors.dart';
import 'package:ecommerce_demo/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextformfield extends StatelessWidget {
  final TextEditingController controller;
  final List<TextInputFormatter> inputFormatterList;
  final String? lableText;
  final String hintText;
  final TextStyle? lableTextStyle;
  final TextStyle? hintTextStyle;
  final int? maxLine;
  final int? minLine;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool readOnly;
  final bool obscureText;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final VoidCallback? suffixIconOnTap;
  final Function(String)? onChanged;
  final Function()? onTap;
  final Function(String)? validator;
  const CustomTextformfield({
    super.key,
    required this.hintText,
    this.readOnly = false,
    this.obscureText = false,
    required this.controller,
    this.inputFormatterList = const [],
    this.lableText,
    this.maxLine,
    this.minLine,
    this.keyboardType,
    this.textInputAction,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconOnTap,
    this.onChanged,
    this.onTap,
    this.validator,
    this.lableTextStyle,
    this.hintTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      controller: controller,
      inputFormatters: inputFormatterList,
      readOnly: readOnly,
      obscureText: obscureText,
      maxLines: obscureText ? 1 : maxLine,
      minLines: obscureText ? 1 : minLine,
      keyboardType: keyboardType,
      onChanged: onChanged,
      onTap: onTap,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
        labelText: lableText,
        hintText: hintText,
        labelStyle: lableTextStyle ?? AppTextStyles.ts14MB(context),
        hintStyle: hintTextStyle ??
            AppTextStyles.ts14RB(context).copyWith(
              color: AppColors.grey,
            ),
        suffixIcon: suffixIcon != null
            ? InkWell(
                onTap: suffixIconOnTap,
                child: Icon(suffixIcon),
              )
            : null,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
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
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.red),
          borderRadius: BorderRadius.circular(10.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
