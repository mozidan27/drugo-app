import 'package:drugo/core/utils/app_assets.dart';
import 'package:drugo/core/utils/app_colors.dart';
import 'package:drugo/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MySeachBar extends StatelessWidget {
  const MySeachBar({
    super.key,
    required TextEditingController searchController,
    required FocusNode focusNode,
  })  : _searchController = searchController,
        _focusNode = focusNode;

  final TextEditingController _searchController;
  final FocusNode _focusNode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270.w,
      height: 50.h,
      child: TextFormField(
        style: TextStyle(color: AppColors.red),
        controller: _searchController,
        focusNode: _focusNode,
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 8),
              child: SvgPicture.asset(
                _focusNode.hasFocus
                    ? Assets.imagesMagnefier // Show magnefier when focused
                    : Assets
                        .imagesMagnefiergrey, // Show magnefier grey when not focused
                height: 10.0.h,
                width: 10.0.w,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.yellow),
              borderRadius: BorderRadius.circular(56),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.grey),
              borderRadius: BorderRadius.circular(56),
            ),
            hintStyle: _focusNode.hasFocus
                ? CustomTextStyles.poppins16grey500
                    .copyWith(color: AppColors.yellow, fontSize: 14.sp)
                : CustomTextStyles.poppins16grey500.copyWith(fontSize: 14.sp),
            hintText: "Search For Your Drug"),
      ),
    );
  }
}
