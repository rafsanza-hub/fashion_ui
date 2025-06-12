import 'package:fashion_ui/core/constants/colors.dart';
import 'package:fashion_ui/core/constants/icons.dart';
import 'package:fashion_ui/core/constants/text_styles.dart';
import 'package:fashion_ui/widget/custom_appbar.dart';
import 'package:fashion_ui/widget/slanted_divider.dart';
import 'package:fashion_ui/widget/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Stack(
        children: [ 
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                SizedBox(height: 33.75.h),
                Text(
                  'Checkout',
                  style: AppTextStyles.titleUppercaseLarge,
                ),
                const SlantedBoxDivider(),
                SizedBox(height: 18.42.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100.w,
                      height: 134.h,
                      child: Image.asset('assets/images/product1.jpg',
                          fit: BoxFit.cover),
                    ),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 7.h),
                        Text(
                          'LAMEREI',
                          style: AppTextStyles.subtitleRegular.copyWith(
                            letterSpacing: 2,
                            height: 20 / 14,
                          ),
                        ),
                        const Text(
                          'Recycle Boucle Knit Cardigan Pink',
                          style: TextStyle(
                            color: Color(0xFF555555),
                            fontSize: 14,
                            fontFamily: 'Tenor Sans',
                            fontWeight: FontWeight.w400,
                            height: 1.71,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          '\$120.00',
                          style: AppTextStyles.bodyMedium.copyWith(
                            fontSize: 15,
                            height: 24 / 15,
                            letterSpacing: 0,
                            color: AppColors.primary,
                          ),
                        ),
                        SizedBox(height: 11.h),
                        Row(
                          children: [
                            SvgIcon(AppIcons.heart,
                                size: 13.51.sp, color: Colors.red),
                            SizedBox(width: 3.h),
                            Text(
                              '4.8 Rating',
                              style: AppTextStyles.bodySmall.copyWith(
                                height: 14 / 12,
                                letterSpacing: 0,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 11.h),
                        Row(
                          children: [
                            Text(
                              'Size: ',
                              style: AppTextStyles.bodySmall.copyWith(
                                height: 14 / 12,
                                letterSpacing: 0,
                              ),
                            ),
                            SizedBox(width: 6.h),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 17.h),
                Divider(
                    height: 1, color: AppColors.black.withValues(alpha: 0.1)),
                Padding(
                  padding: EdgeInsets.only(
                      left: 43.w - 16.w,
                      right: 10,
                      bottom: 14.54.h,
                      top: 18.76.h),
                  child: Row(children: [
                    SvgIcon(AppIcons.voucher,
                        size: 20.sp, color: AppColors.black),
                    SizedBox(width: 10.h),
                    Text(
                      'Add promo code',
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.darkGray,
                        height: 16 / 14,
                        fontSize: 14.sp,
                        letterSpacing: 0,
                      ),
                    )
                  ]),
                ),
                Divider(
                    height: 1, color: AppColors.black.withValues(alpha: 0.1)),
                Padding(
                  padding: EdgeInsets.only(
                      left: 43.w - 16.w,
                      right: 10,
                      bottom: 14.54.h,
                      top: 18.76.h),
                  child: Row(children: [
                    SvgIcon(AppIcons.voucher,
                        size: 20.sp, color: AppColors.black),
                    SizedBox(width: 10.h),
                    Text(
                      'Add promo code',
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.darkGray,
                        height: 16 / 14,
                        fontSize: 14.sp,
                        letterSpacing: 0,
                      ),
                    )
                  ]),
                ),
                Divider(
                    height: 1, color: AppColors.black.withValues(alpha: 0.1)),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
                child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    label: Text('Checkout',
                        style: AppTextStyles.titleRegular
                            .copyWith(color: AppColors.white)),
                    icon: SvgIcon(AppIcons.filter),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      textStyle: AppTextStyles.titleRegular
                          .copyWith(color: AppColors.white),
                      shape: const RoundedRectangleBorder(),
                      backgroundColor: AppColors.black,
                      minimumSize: const Size(double.infinity, 56),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).padding.bottom),
              ],
            )),
          )
        ],
      ),
    );
  }
}
