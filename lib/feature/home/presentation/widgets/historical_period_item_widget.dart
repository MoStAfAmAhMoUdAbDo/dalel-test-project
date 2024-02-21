import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings_style.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodItemWidget extends StatelessWidget {
  const HistoricalPeriodItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      width: 164,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: AppColors.grey, blurRadius: 5, offset: const Offset(0, 5))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 16),
          SizedBox(
            height: 48,
            width: 62,
            child: Text(
              "Ancient Egypt",
              style: CustomTextStyle.poppinso500Style15,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 64,
            width: 47,
            decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(Assets.assetsImagesFrame)),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
