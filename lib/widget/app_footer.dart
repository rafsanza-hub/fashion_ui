import 'package:fashion_ui/core/constants/colors.dart';
import 'package:fashion_ui/core/constants/icons.dart';
import 'package:fashion_ui/core/constants/text_styles.dart';
import 'package:fashion_ui/screen/home_screen.dart';
import 'package:fashion_ui/widget/slanted_divider.dart';
import 'package:fashion_ui/widget/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColors.white,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgIcon(AppIcons.twitter, size: 24.sp),
                  SvgIcon(AppIcons.instagram, size: 24.sp),
                  SvgIcon(AppIcons.youtube, size: 24.sp),
                ],
              ),
              SizedBox(height: 24.h),
              const SlantedBoxDivider(),
              SizedBox(height: 18.73.h),
              Text(
                'support@openui.design\n+60 fg825 876\n08:00 - 22:00 - Everyday',
                style: AppTextStyles.bodyLarge
                    .copyWith(color: AppColors.darkestGray),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 19.76.h),
              const SlantedBoxDivider(),
              SizedBox(height: 32.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('About',
                      style: AppTextStyles.bodyLarge
                          .copyWith(color: Colors.black)),
                  Text('Contact',
                      style: AppTextStyles.bodyLarge
                          .copyWith(color: Colors.black)),
                  Text('Blog',
                      style: AppTextStyles.bodyLarge
                          .copyWith(color: Colors.black)),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 22.97.h),
        Container(
          height: 45.h,
          color: const Color(0xFFC4C4C4).withValues(alpha: 0.1),
          alignment: Alignment.center,
          child: Text(
            'Copyright© OpenUI All Rights Reserved.',
            style: AppTextStyles.bodySmall.copyWith(color: AppColors.darkGray),
          ),
        ),
      ],
    );
  }
}
