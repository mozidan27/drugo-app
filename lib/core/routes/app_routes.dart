import 'package:drugo/screens/home%20screen/screens/home_screen.dart';
import 'package:drugo/screens/onboarding%20screen/screens/onboarding_screen.dart';
import 'package:drugo/screens/onboarding%20screen/screens/welcome_onboarding_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> buildAppRoutes() {
  return {
    '/onboardingscreen': (context) => const OnboardingScreen(),
    '/welcomeonboardingscreen': (context) => const WelcomeOnboardingScreen(),
    '/homescreen': (context) => const HomeScreen(),
  };
}
