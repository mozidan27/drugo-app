import 'package:drugo/core/functions/navigation';
import 'package:drugo/core/utils/app_assets.dart';
import 'package:drugo/screens/home%20screen/screens/widgets/my_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarAndAboutUS extends StatelessWidget {
  const SearchBarAndAboutUS({
    super.key,
    required TextEditingController searchController,
    required FocusNode focusNode,
  })  : _searchController = searchController,
        _focusNode = focusNode;

  final TextEditingController _searchController;
  final FocusNode _focusNode;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MySeachBar(searchController: _searchController, focusNode: _focusNode),
        GestureDetector(
          onTap: () => customnavigate(context, "/aboutus"),
          child: SizedBox(
            height: 30.h,
            width: 30.w,
            child: SvgPicture.asset(Assets.imagesLogosvg2),
          ),
        )
      ],
    );
  }
}
