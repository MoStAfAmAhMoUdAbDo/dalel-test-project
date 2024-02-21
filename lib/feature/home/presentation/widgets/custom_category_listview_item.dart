import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings_style.dart';
import 'package:flutter/material.dart';

class CustomCategoryListViewItem extends StatelessWidget {
  const CustomCategoryListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 7,
              color: AppColors.grey,
              offset: const Offset(0, 7),
            )
          ]),
      child: Column(
        children: [
          Container(
            width: 74,
            height: 96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                image: AssetImage(Assets.assetsImagesFrame3),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 11),
          Text(
            "Lionheart",
            style: CustomTextStyle.poppinso500Style14,
          )
        ],
      ),
    );
  }
}
