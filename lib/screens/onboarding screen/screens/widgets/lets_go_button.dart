import 'package:drugo/core/database/cache/cache_helper.dart';
import 'package:drugo/core/functions/navigation';
import 'package:drugo/core/services/service_locator.dart';
import 'package:drugo/core/utils/app_colors.dart';
import 'package:drugo/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LetsGoButton extends StatelessWidget {
  const LetsGoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          bool isOnBoardingVisited =
              getit<CacheHelper>().getData(key: "isOnBoardingVisited") ?? false;
          if (isOnBoardingVisited == true) {
            customReplacementNavigate(context, "/homescreen");
          } else {
            customReplacementNavigate(context, "/onboardingscreen");
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 18, top: 30),
          child: Container(
            width: 120.w,
            height: 60.h,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              color: AppColors.primaryColor,
            ),
            child: Center(
              child:
                  Text("Let's Go!", style: CustomTextStyles.poppins16white700),
            ),
          ),
        ),
      ),
    );
  }
}
