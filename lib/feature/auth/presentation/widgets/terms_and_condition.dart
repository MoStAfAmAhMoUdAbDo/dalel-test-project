import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_strings_style.dart';
import 'package:flutter/material.dart';
import 'package:dalel/feature/auth/presentation/widgets/custom_checkbox_widget.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: AppStrings.iHaveAgreeToOur,
              style: CustomTextStyle.poppinso400Style12,
            ),
            TextSpan(
              text: AppStrings.termsAndCondition,
              style: CustomTextStyle.poppinso400Style12.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
