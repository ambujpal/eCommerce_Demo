import 'package:ecommerce_demo/constants/app_colors.dart';
import 'package:ecommerce_demo/constants/app_padding.dart';
import 'package:ecommerce_demo/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class CollectionWidget extends StatelessWidget {
  final String collectionTitle;
  final List collectionList;
  const CollectionWidget(
      {super.key, required this.collectionTitle, required this.collectionList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Divider(color: AppColors.grey),
            Container(
              color: AppColors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  collectionTitle,
                  style: AppTextStyles.ts16RB(context),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: AppSizes.height * 0.3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView.builder(
                itemCount: collectionList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var data = collectionList[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Container(
                      decoration:
                          BoxDecoration(color: AppColors.grey.withOpacity(0.2)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Image.asset(
                              data["image"],
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              data["title"],
                              style: AppTextStyles.ts16RB(context),
                            ),
                            Row(
                              children: [
                                Text(
                                  data["offerPrice"],
                                  style: AppTextStyles.ts16RB(context),
                                ),
                                const SizedBox(width: 15),
                                Text(data["price"],
                                    style: AppTextStyles.ts16RB(context)
                                        .copyWith(
                                            color: AppColors.grey,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            decorationColor: AppColors.grey)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
