import 'package:drugo/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({required this.controller, super.key});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: SwapEffect(
          activeDotColor: AppColors.primaryColor,
          dotColor: AppColors.grey.withOpacity(0.4),
          dotHeight: 7.h,
          dotWidth: 20.w,
          type: SwapType.yRotation),
    );
  }
}
