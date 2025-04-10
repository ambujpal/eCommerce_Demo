import 'package:ecommerce_demo/constants/app_colors.dart';
import 'package:ecommerce_demo/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Color? bgColor;
  final Color? fgColor;
  final Color? indicatorColor;
  final TextStyle? btnStyle;
  final bool? isHalf;
  final bool isLoading;
  final String title;
  final VoidCallback onPressed;
  const CustomElevatedButton({
    super.key,
    required this.bgColor,
    this.fgColor,
    this.indicatorColor,
    required this.title,
    this.isHalf,
    this.isLoading = false,
    required this.onPressed,
    this.btnStyle,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: isHalf == true ? width / 2 : width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: fgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: isLoading
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: CircularProgressIndicator(
                    color: indicatorColor,
                  ),
                ),
              )
            : Text(
                title,
                style: btnStyle ??
                    AppTextStyles.ts18BB(context).copyWith(
                      color: AppColors.white,
                    ),
              ),
      ),
    );
  }
}
