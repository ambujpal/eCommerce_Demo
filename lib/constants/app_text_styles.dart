import 'package:ecommerce_demo/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static double _getFontSize(BuildContext context, double baseSize) {
    double screenWidth = MediaQuery.of(context).size.width;
    double scaleFactor = screenWidth / 360;
    double responsiveSize = baseSize * scaleFactor;

    double minSize = baseSize * 0.8;
    double maxSize = baseSize * 1.2;

    return responsiveSize.clamp(minSize, maxSize);
  }

  // Light Text Styles
  static TextStyle ts12LB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: _getFontSize(context, 12),
      color: AppColors.black);
  static TextStyle ts14LB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: _getFontSize(context, 14),
      color: AppColors.black);
  static TextStyle ts16LB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: _getFontSize(context, 16),
      color: AppColors.black);
  static TextStyle ts18LB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: _getFontSize(context, 18),
      color: AppColors.black);
  static TextStyle ts20LB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: _getFontSize(context, 20),
      color: AppColors.black);

  // Regular Text Styles
  static TextStyle ts12RB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getFontSize(context, 12),
      color: AppColors.black);
  static TextStyle ts14RB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getFontSize(context, 14),
      color: AppColors.black);
  static TextStyle ts16RB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getFontSize(context, 16),
      color: AppColors.black);
  static TextStyle ts18RB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getFontSize(context, 18),
      color: AppColors.black);
  static TextStyle ts20RB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: _getFontSize(context, 20),
      color: AppColors.black);

  // Medium Text Styles
  static TextStyle ts12MB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getFontSize(context, 12),
      color: AppColors.black);
  static TextStyle ts14MB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getFontSize(context, 14),
      color: AppColors.black);
  static TextStyle ts16MB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getFontSize(context, 16),
      color: AppColors.black);
  static TextStyle ts18MB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getFontSize(context, 18),
      color: AppColors.black);
  static TextStyle ts20MB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getFontSize(context, 20),
      color: AppColors.black);

  // Bold Text Styles
  static TextStyle ts12BB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getFontSize(context, 12),
      color: AppColors.black);
  static TextStyle ts14BB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getFontSize(context, 14),
      color: AppColors.black);
  static TextStyle ts16BB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getFontSize(context, 16),
      color: AppColors.black);
  static TextStyle ts18BB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getFontSize(context, 18),
      color: AppColors.black);
  static TextStyle ts20BB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getFontSize(context, 20),
      color: AppColors.black);

  // White Text Styles
  static TextStyle ts12WB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: _getFontSize(context, 12),
      color: AppColors.white);
  static TextStyle ts14WB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: _getFontSize(context, 14),
      color: AppColors.white);
  static TextStyle ts16WB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: _getFontSize(context, 16),
      color: AppColors.white);
  static TextStyle ts18WB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: _getFontSize(context, 18),
      color: AppColors.white);
  static TextStyle ts20WB(BuildContext context) => TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: _getFontSize(context, 20),
      color: AppColors.white);
}
