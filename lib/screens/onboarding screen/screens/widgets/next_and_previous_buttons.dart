import 'package:drugo/core/functions/navigation';
import 'package:drugo/core/functions/on_boarding_visited.dart';
import 'package:drugo/core/utils/app_text_styles.dart';
import 'package:drugo/screens/onboarding%20screen/data/model/onboarding_model.dart';
import 'package:flutter/material.dart';

class NextAndPreviousButtons extends StatelessWidget {
  const NextAndPreviousButtons(
      {super.key, required this.controller, required this.currentIndex});

  final PageController controller;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return currentIndex != onBoardingData.length - 1
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  controller.previousPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.bounceIn);
                },
                child: Text(
                  "Previous",
                  style: CustomTextStyles.poppins16grey500.copyWith(
                      color: const Color(0xff090F47).withOpacity(0.4)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  controller.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.bounceIn);
                },
                child: Text(
                  "Next",
                  style: CustomTextStyles.poppins16blue500,
                ),
              )
            ],
          )
        : GestureDetector(
            onTap: () {
              onBoardingVisited();
              customReplacementNavigate(context, "/homescreen");
            },
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Let's Start",
                style: CustomTextStyles.poppins16blue500,
              ),
            ),
          );
  }
}
