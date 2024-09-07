import 'package:drugo/core/utils/app_assets.dart';
import 'package:drugo/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: SvgPicture.asset(
                Assets.imagesLogosvg,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About Us",
                      style: CustomTextStyles.poppins20black900,
                    ),
                    Text(
                        "Hi! We’re Ahmed and Zidan, two dedicated developers with a shared passion for healthcare and technology. Ahmed, with a background in [mention any relevant field, e.g., pharmacy or medicine], brings in-depth knowledge of medical practices, while Zidan, a Flutter developer, adds expertise in creating user-friendly mobile apps.",
                        style: CustomTextStyles.poppins16darkgrey500),
                    Text(
                        "Our journey began with a simple idea: to make accessing reliable drug information easier and more efficient. With this goal in mind, we created Drugo, a comprehensive and easy-to-use drug app designed to help both patients and healthcare providers. Our app offers a vast database of drugs, dosage guidelines, and details on drug interactions, all at your fingertips.",
                        style: CustomTextStyles.poppins16darkgrey500),
                    Text(
                      "Our Mission",
                      style: CustomTextStyles.poppins20black900,
                    ),
                    Text(
                        "Our mission is to empower individuals to make informed decisions about their health by providing accurate and accessible drug information. We believe that everyone should have easy access to reliable medical knowledge, whether at home or on the go.",
                        style: CustomTextStyles.poppins16darkgrey500),
                    Text(
                      "Why Choose Our App?",
                      style: CustomTextStyles.poppins20black900,
                    ),
                    Text(
                        ". Comprehensive Drug Database: Quickly find detailed information on thousands of drugs.",
                        style: CustomTextStyles.poppins16darkgrey500),
                    Text(
                        ". User-Friendly Interface: Designed with simplicity in mind for all users.",
                        style: CustomTextStyles.poppins16darkgrey500),
                    Text(
                        ". Up-to-Date Information: Stay informed with the latest updates on drug interactions and side effects.",
                        style: CustomTextStyles.poppins16darkgrey500),
                    Text(
                        "Join us on this journey to make healthcare more accessible for everyone!",
                        style: CustomTextStyles.poppins16darkgrey500),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



// RichText(
//               text: TextSpan(children: [
//                 TextSpan(
//                     text: 'About Us',
//                     style: CustomTextStyles.poppins20black900),
//                 TextSpan(
//                     text: 'About Us', style: CustomTextStyles.poppins20black900)
//               ]),
//             ),