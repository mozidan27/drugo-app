import 'package:drugo/core/routes/app_routes.dart';
import 'package:drugo/core/utils/app_colors.dart';
import 'package:drugo/screens/onboarding%20screen/screens/welcome_onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Drugo extends StatelessWidget {
  const Drugo({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        home: const WelcomeOnboardingScreen(),
        debugShowCheckedModeBanner: false,
        routes: buildAppRoutes(),
        theme: ThemeData(scaffoldBackgroundColor: AppColors.white),
      ),
    );
  }
}
