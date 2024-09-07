import 'package:drugo/core/helper/spacing.dart';
import 'package:drugo/core/utils/app_colors.dart';
import 'package:drugo/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrugCard extends StatelessWidget {
  const DrugCard(
      {super.key,
      required this.drugiamge,
      required this.drugtitle,
      required this.drugprice});
  final String drugiamge;
  final String drugtitle;
  final String drugprice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 157.w,
        height: 300.h,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: AppColors.grey,
              offset: const Offset(0, 3),
              blurRadius: 10,
              spreadRadius: 0.1),
        ], borderRadius: BorderRadius.circular(10), color: AppColors.white),
        child: Column(
          children: [
            // image path
            Image.asset(
              drugiamge,
              width: 147.w,
            ),
            // drug name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                drugtitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.poppins16white700
                    .copyWith()
                    .copyWith(color: AppColors.black),
              ),
            ),
            verticalSpace(40),
            // drug price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    drugprice,
                    style: CustomTextStyles.poppins14red900,
                  ),
                  Text(
                    'More',
                    style: CustomTextStyles.poppins16grey500
                        .copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
