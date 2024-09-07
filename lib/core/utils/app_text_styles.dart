import 'package:drugo/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class CustomTextStyles {
  static final poppins18blue500 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
    fontFamily: "Poppins",
  );

  static final poppins16blue500 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
    fontFamily: "Poppins",
  );
  static final poppins16grey500 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.grey,
    fontFamily: "Poppins",
  );

  static final poppins20black900 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w900,
    color: AppColors.black,
    fontFamily: "Poppins",
  );

  static final poppins16white700 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
    fontFamily: "Poppins",
  );
}
