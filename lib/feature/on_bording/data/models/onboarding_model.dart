import 'package:dalel/core/utils/app_assets.dart';

class OnBoardingModel {
  final String imageUrl;
  final String title;
  final String subTitle;

  OnBoardingModel(
      {required this.imageUrl, required this.title, required this.subTitle});
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    imageUrl: Assets.assetsImagesOnBoarding1,
    title: "Explore The history with Dalel in a smart way",
    subTitle:
        "Using our app’s history libraries you can find many historical periods ",
  ),
  OnBoardingModel(
    imageUrl: Assets.assetsImagesOnBoarding2,
    title: "From every place on earth",
    subTitle: "A big variety of ancient places from all over the world",
  ),
  OnBoardingModel(
    imageUrl: Assets.assetsImagesOnBoarding,
    title: "Using modern AI technology for better user experience",
    subTitle:
        "AI provide recommendations and helps you to continue the search journey",
  ),
];
