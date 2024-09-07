import 'package:drugo/core/utils/app_assets.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subtitle;

  OnBoardingModel(
      {required this.imagePath, required this.title, required this.subtitle});
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
      imagePath: Assets.imagesON1,
      title: 'Your Personal Medicine Guide',
      subtitle:
          'Discover Detailed Information and Insights on Your Medications'),
  OnBoardingModel(
      imagePath: Assets.imagesON2,
      title: 'Find Equivalent Medicines',
      subtitle: 'Locate Alternatives with the Same Active Ingredient'),
  OnBoardingModel(
      imagePath: Assets.imagesON3,
      title: 'Check Latest Prices',
      subtitle: 'Get the Most Recent Updates on Medication Costs'),
];
