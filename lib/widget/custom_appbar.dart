import 'package:fashion_ui/core/constants/colors.dart';
import 'package:fashion_ui/core/constants/icons.dart';
import 'package:fashion_ui/screen/checkout_screen.dart';
import 'package:fashion_ui/widget/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  const CustomAppBar({
    super.key,
    this.backgroundColor = const Color(0xFFFFFFFF),
  });

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;

    return Container(
      height: 56.h + paddingTop,
      padding: EdgeInsets.only(top: paddingTop, left: 16.w, right: 16.w),
      color: backgroundColor,
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
                GestureDetector(
                    onTap: () {
                      Get.to(() => const CheckoutScreen());
                    },
                    child: SvgIcon(AppIcons.shopping, size: 24.sp)),
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
