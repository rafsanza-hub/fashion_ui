import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  // Title styles
  static TextStyle titleUppercaseLarge = TextStyle(
    color: Color(0xFF202224),
    fontSize: 18.sp,
    fontFamily: 'Tenor Sans',
    fontWeight: FontWeight.w400,
    height: 40 / 18,
    letterSpacing: 4,
  );

  static TextStyle titleUppercaseMedium = TextStyle(
    color: Color(0xFF202224),
    fontSize: 16.sp,
    fontFamily: 'Tenor Sans',
    fontWeight: FontWeight.w400,
    height: 1.50,
    letterSpacing: 2,
  );

  static TextStyle titleUppercaseSmall = TextStyle(
    color: Color(0xFF202224),
    fontSize: 14.sp,
    fontFamily: 'Tenor Sans',
    fontWeight: FontWeight.w400,
    height: 1.43,
    letterSpacing: 2,
  );

  static TextStyle titleRegular = TextStyle(
    color: Color(0xFF202224),
    fontSize: 14.sp,
    fontFamily: 'Tenor Sans',
    fontWeight: FontWeight.w400,
    height: 1.43,
  );

  // Subtitle styles
  static TextStyle subtitleRegular = TextStyle(
    color: Color(0xFF202224),
    fontSize: 14.sp,
    fontFamily: 'Tenor Sans',
    fontWeight: FontWeight.w400,
    height: 1.43,
  );

  // Body text styles
  static TextStyle bodyLarge = TextStyle(
    color: Color(0xFF727272),
    fontSize: 16.sp,
    fontFamily: 'Tenor Sans',
    fontWeight: FontWeight.w400,
    height: 1.50,
  );

  static TextStyle bodyMedium = TextStyle(
    color: Color(0xFF727272),
    fontSize: 14.sp,
    fontFamily: 'Tenor Sans',
    fontWeight: FontWeight.w400,
    height: 1.71,
  );

  static TextStyle bodySmall = TextStyle(
    color: Color(0xFF727272),
    fontSize: 12.sp,
    fontFamily: 'Tenor Sans',
    fontWeight: FontWeight.w400,
    height: 1.50,
  );
}
