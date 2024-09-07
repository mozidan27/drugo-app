import 'package:drugo/core/functions/navigation';
import 'package:drugo/core/functions/on_boarding_visited.dart';
import 'package:drugo/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onBoardingVisited();
        customReplacementNavigate(context, "/homescreen");
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text("Skip", style: CustomTextStyles.poppins16blue500),
      ),
    );
  }
}
