import 'package:dalel/core/utils/app_strings_style.dart';
import 'package:dalel/feature/on_bording/data/models/onboarding_model.dart';
import 'package:dalel/feature/on_bording/presentation/widgets/custom_smoth_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardWidget extends StatelessWidget {
  const OnBoardWidget(
      {super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        onBoardingData[index].imageUrl,
                      ),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SmoothIndicatorWidget(
                controller: controller,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                onBoardingData[index].title,
                textAlign: TextAlign.center,
                style: CustomTextStyle.poppinso500Style24
                    .copyWith(fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                onBoardingData[index].subTitle,
                textAlign: TextAlign.center,
                style: CustomTextStyle.poppinso300Style16,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        },
      ),
    );
  }
}
