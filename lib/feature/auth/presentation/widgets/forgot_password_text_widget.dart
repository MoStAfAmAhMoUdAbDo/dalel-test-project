import 'package:dalel/core/functions/navigations.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_strings_style.dart';
import 'package:flutter/material.dart';

class ForgetPasswordTextWidget extends StatelessWidget {
  const ForgetPasswordTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customReplacementNavigate(context, "/forgotPassword");
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.forgotPassword,
          style: CustomTextStyle.poppinso600Style28.copyWith(
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
