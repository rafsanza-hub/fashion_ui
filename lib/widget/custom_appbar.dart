import 'package:fashion_ui/core/constants/icons.dart';
import 'package:fashion_ui/widget/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;

    return Container(
      height: 56.h + paddingTop,
      padding: EdgeInsets.only(top: paddingTop, left: 16.w, right: 16.w),
      color: const Color(0xFFE7EAEF),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SvgIcon(AppIcons.menu, size: 24.sp),
          ),

          // logo
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/svg/header.svg',
              width: 78.w,
              height: 32.h,
            ),
          ),

          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgIcon(AppIcons.search, size: 24.sp),
                SizedBox(width: 16.w),
                SvgIcon(AppIcons.shopping, size: 24.sp),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}
