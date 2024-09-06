import 'package:drugo/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Drugo extends StatelessWidget {
  const Drugo({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        home: OnboardingScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
