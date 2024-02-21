import 'package:dalel/core/functions/navigations.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_strings_style.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/feature/on_bording/data/models/onboarding_model.dart';
import 'package:dalel/feature/on_bording/presentation/views/functions/on_boarding_visited.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.controller, required this.currentIndex});
  final PageController controller;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomButton(
            btnName: AppStrings.createAccount,
            onPressed: () {
              onBoardingVisiting();
              customReplacementNavigate(context, "/signUp");
            },
          ),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () {
              onBoardingVisiting();
              customReplacementNavigate(context, "/signIn");
            },
            child: Text(
              AppStrings.loginNow,
              style: CustomTextStyle.poppinso300Style16.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      );
    } else {
      return CustomButton(
        btnName: AppStrings.next,
        onPressed: () {
          controller.nextPage(
            duration: const Duration(microseconds: 400),
            curve: Curves.bounceIn,
          );
        },
      );
    }
  }
}
