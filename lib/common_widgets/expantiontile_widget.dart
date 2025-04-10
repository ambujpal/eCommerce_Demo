import 'package:ecommerce_demo/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class ExpantiontileWidget extends StatelessWidget {
  final String title;
  final String content;
  const ExpantiontileWidget(
      {super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text(
            title,
            style: AppTextStyles.ts16BB(context),
          ),
          children: [
            Text(
              content,
              style: AppTextStyles.ts14RB(context),
            )
          ],
        ),
      ),
    );
  }
}
