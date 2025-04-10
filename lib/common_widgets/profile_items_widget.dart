import 'package:ecommerce_demo/constants/app_colors.dart';
import 'package:ecommerce_demo/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class ProfileItemsWidget extends StatelessWidget {
  final String icons;
  final String title;
  final VoidCallback? onPressed;
  const ProfileItemsWidget(
      {super.key,
      required this.icons,
      required this.title,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset(
                    icons,
                    height: 30,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    title,
                    style: AppTextStyles.ts16BB(context),
                  )
                ],
              ),
            ),
          ),
        ),
        Divider(color: AppColors.grey),
      ],
    );
  }
}
