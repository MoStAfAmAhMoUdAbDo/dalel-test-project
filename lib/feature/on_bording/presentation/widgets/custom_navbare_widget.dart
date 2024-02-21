import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_strings_style.dart';
import 'package:flutter/material.dart';

class CustomNavBarWidget extends StatelessWidget {
  const CustomNavBarWidget({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          AppStrings.skip,
          style: CustomTextStyle.poppinso500Style24
              .copyWith(fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
