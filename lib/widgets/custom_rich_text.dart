import 'package:ecommerce_demo/constants/app_text_styles.dart';
import 'package:flutter/widgets.dart';

class CustomRichText extends StatelessWidget {
  final String title;
  final String subTitle;
  final TextStyle? titleStyle;
  final TextStyle? subTitleStyle;
  const CustomRichText({
    super.key,
    required this.title,
    required this.subTitle,
    this.titleStyle,
    this.subTitleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title,
        style: titleStyle ?? AppTextStyles.ts14MB(context),
        children: [
          TextSpan(
            text: " $subTitle",
            style: subTitleStyle ?? AppTextStyles.ts14MB(context),
          )
        ],
      ),
    );
  }
}
