import 'package:drugo/core/utils/app_assets.dart';

class HomeScreenModel {
  final String imagePath;
  final String title;
  final double price;

  HomeScreenModel(
      {required this.imagePath, required this.title, required this.price});
}

List<HomeScreenModel> homeScreenData = [
  HomeScreenModel(imagePath: Assets.imagesDrug1, title: 'Med1', price: 100),
  HomeScreenModel(imagePath: Assets.imagesDrug2, title: 'Med2', price: 120),
  HomeScreenModel(imagePath: Assets.imagesDrug3, title: 'Med3', price: 130),
  HomeScreenModel(imagePath: Assets.imagesDrug4, title: 'Med4', price: 140),
  HomeScreenModel(imagePath: Assets.imagesDrug5, title: 'Med5', price: 150),
  HomeScreenModel(imagePath: Assets.imagesDrug6, title: 'Med6', price: 160),
  HomeScreenModel(imagePath: Assets.imagesDrug7, title: 'Med7', price: 170),
  HomeScreenModel(imagePath: Assets.imagesDrug8, title: 'Med8', price: 180),
  HomeScreenModel(imagePath: Assets.imagesDrug9, title: 'Med9', price: 190),
];
