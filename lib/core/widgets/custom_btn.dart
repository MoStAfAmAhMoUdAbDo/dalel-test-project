import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnName;
  final void Function()? onPressed;
  final Color? color;

  const CustomButton(
      {super.key, required this.btnName, required this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          btnName,
          style: CustomTextStyle.poppinso500Style24.copyWith(
            fontSize: 18,
            color: AppColors.offWhite,
          ),
        ),
      ),
    );
  }
}
