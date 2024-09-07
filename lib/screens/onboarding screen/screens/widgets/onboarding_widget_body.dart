import 'package:drugo/core/utils/app_text_styles.dart';
import 'package:drugo/screens/onboarding%20screen/data/model/onboarding_model.dart';
import 'package:drugo/screens/onboarding%20screen/screens/widgets/custom_smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  const OnBoardingWidgetBody(
      {super.key, this.onPageChanged, required this.controller});
  final PageController controller;
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550.h,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 359.h,
                width: 314.w,
                decoration: const BoxDecoration(),
                child: Image.asset(onBoardingData[index].imagePath),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomSmoothPageIndicator(
                controller: controller,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                onBoardingData[index].title,
                style: CustomTextStyles.poppins20black900,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                onBoardingData[index].subtitle,
                style: CustomTextStyles.poppins16grey500,
                textAlign: TextAlign.center,
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
