import 'dart:math';

import 'package:fashion_ui/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlantedBoxDivider extends StatelessWidget {
  const SlantedBoxDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 124.96.w,
      child: Row(children: [
        Expanded(
          child: Divider(
            thickness: 0.3.r,
            color: AppColors.darkGray,
          ),
        ),
        Transform.rotate(
          angle: pi / 4,
          child: Container(
            height: 9.25.h,
            width: 9.25.h,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: AppColors.darkGray,
                strokeAlign: BorderSide.strokeAlignInside,
                width: 0.3.r,
              ),
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 0.3.r,
            color: AppColors.darkGray,
          ),
        ),
      ]),
    );
  }
}
