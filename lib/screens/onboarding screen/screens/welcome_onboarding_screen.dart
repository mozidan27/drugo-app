import 'package:drugo/core/utils/app_assets.dart';
import 'package:drugo/core/utils/app_colors.dart';
import 'package:drugo/screens/onboarding%20screen/screens/widgets/lets_go_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeOnboardingScreen extends StatelessWidget {
  const WelcomeOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Align(
                alignment: Alignment.center,
                child: Container(
                    height: 200.h,
                    width: 200.w,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Assets.imagesDrugologo))))),
            Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset(Assets.imagesLogosvg)),
            const LetsGoButton()
          ],
        ),
      ),
    );
  }
}
