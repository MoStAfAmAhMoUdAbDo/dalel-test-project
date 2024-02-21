import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_strings_style.dart';
import 'package:flutter/material.dart';

class ForgotPAsswordSubTitleWidget extends StatelessWidget {
  const ForgotPAsswordSubTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34.0),
      child: Text(
        AppStrings.forgotPasswordSubTitle,
        style: CustomTextStyle.poppinso400Style12.copyWith(fontSize: 14),
        textAlign: TextAlign.center,
      ),
    );
  }
}
