import 'package:drugo/core/helper/spacing.dart';
import 'package:drugo/screens/onboarding%20screen/screens/widgets/custom_nav_bar.dart';
import 'package:drugo/screens/onboarding%20screen/screens/widgets/next_and_previous_buttons.dart';
import 'package:drugo/screens/onboarding%20screen/screens/widgets/onboarding_widget_body.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SafeArea(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              verticalSpace(15),
              const CustomNavBar(),
              verticalSpace(10),
              OnBoardingWidgetBody(
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  controller: _controller),
              verticalSpace(30),
              NextAndPreviousButtons(
                controller: _controller,
                currentIndex: currentIndex,
              )
            ],
          ),
        ),
      ),
    );
  }
}
