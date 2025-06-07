import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fashion_ui/core/constants/colors.dart';
import 'package:fashion_ui/core/constants/icons.dart';
import 'package:fashion_ui/core/constants/text_styles.dart';
import 'package:fashion_ui/widget/svg_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: AppColors.white,
              height: MediaQuery.of(context).padding.top,
            ),
            // Header Section
            _buildHeader(context),
            // Filter Section
            _buildFilterSection(context),
            // Products Grid Section
            _buildProductsGridSection(context),
            // Pagination Section
            _buildPaginationSection(context),
            // Footer Section
            _buildFooterSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      height: 60.h,
      color: AppColors.white,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgIcon(AppIcons.back, size: 24.sp),
          SvgPicture.asset(
            'assets/svg/header.svg',
            width: 78.w,
            height: 32.h,
          ),
          Row(
            children: [
              SvgIcon(AppIcons.search, size: 24.sp),
              SizedBox(width: 16.w),
              SvgIcon(AppIcons.filter, size: 24.sp),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFilterSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '4500 APPAREL',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.darkestGray,
                  fontSize: 14.sp,
                ),
              ),
              Row(
                children: [
                  Text(
                    'New',
                    style: AppTextStyles.bodySmall.copyWith(
                      color: AppColors.darkGray,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  SvgIcon(AppIcons.shipping,
                      size: 20.sp, color: AppColors.darkGray.withOpacity(0.5)),
                  SizedBox(width: 16.w),
                  SvgIcon(AppIcons.shipping,
                      size: 20.sp, color: AppColors.darkGray.withOpacity(0.5)),
                ],
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Wrap(
            spacing: 8.w,
            children: [
              _buildFilterChip(context, 'Women'),
              _buildFilterChip(context, 'All apparel'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductsGridSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 165.w / 285.h,
        mainAxisSpacing: 16.h,
        crossAxisSpacing: 16.w,
        children: [
          _buildProductCard(context, '21WN', 'reversible angora cardigan', 120,
              'assets/images/product1.jpg'),
          _buildProductCard(context, 'lamerei', 'reversible angora cardigan',
              120, 'assets/images/product2.jpg'),
          _buildProductCard(context, '21WN', 'reversible angora cardigan', 120,
              'assets/images/product3.jpg'),
          _buildProductCard(context, 'lamerei', 'reversible angora cardigan',
              120, 'assets/images/product4.jpg'),
          _buildProductCard(context, '21WN', 'reversible angora cardigan', 120,
              'assets/images/product4.jpg'),
          _buildProductCard(context, 'lamerei', 'reversible angora cardigan',
              120, 'assets/images/product4.jpg'),
          _buildProductCard(context, '21WN', 'reversible angora cardigan', 120,
              'assets/images/product4.jpg'),
          _buildProductCard(context, 'lamerei', 'reversible angora cardigan',
              120, 'assets/images/product4.jpg'),
          _buildProductCard(context, '21WN', 'reversible angora cardigan', 120,
              'assets/images/product4.jpg'),
          _buildProductCard(context, 'lamerei', 'reversible angora cardigan',
              120, 'assets/images/product4.jpg'),
        ],
      ),
    );
  }

  Widget _buildPaginationSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(5, (index) {
          final isSelected = index == 0;
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 32.w,
                height: 32.h,
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.darkestGray
                      : AppColors.lightGrey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Center(
                  child: Text(
                    '${index + 1}',
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: isSelected ? AppColors.white : AppColors.darkGray,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
          );
        })
          ..add(
            Padding(
              padding: EdgeInsets.only(left: 12.w),
              child:
                  SvgIcon(AppIcons.up, size: 24.sp, color: AppColors.darkGray),
            ),
          ),
      ),
    );
  }

  Widget _buildFooterSection(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.facebook, size: 24.sp),
              Icon(Icons.facebook, size: 24.sp),
              Icon(Icons.facebook, size: 24.sp),
            ],
          ),
          SizedBox(height: 24.h),
          Text(
            'support@openui.design\n+60 825 876\n08:00 - 22:00 - Everyday',
            style: AppTextStyles.bodyLarge.copyWith(
              color: AppColors.darkestGray,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('About', style: AppTextStyles.bodyLarge),
              Text('Contact', style: AppTextStyles.bodyLarge),
              Text('Blog', style: AppTextStyles.bodyLarge),
            ],
          ),
          SizedBox(height: 24.h),
          Container(
            height: 45.h,
            color: AppColors.lightGrey.withOpacity(0.1),
            alignment: Alignment.center,
            child: Text(
              'Copyright© OpenUI All Rights Reserved.',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.darkGray,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(BuildContext context, String brand, String title,
      double price, String image) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(
              image,
              width: 165.w,
              height: 220.h,
              fit: BoxFit.cover,
            ),
            Positioned(
              right: 8.w,
              bottom: 8.h,
              child: SvgIcon(AppIcons.heart,
                  size: 16.sp, color: AppColors.darkGray),
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Text(
          brand,
          style: AppTextStyles.bodySmall.copyWith(
            color: AppColors.black,
          ),
        ),
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: AppTextStyles.bodySmall.copyWith(
            color: AppColors.darkGray,
            height: 1.5,
          ),
        ),
        Text(
          '\$$price',
          style: AppTextStyles.bodyMedium.copyWith(
            color: AppColors.secondary,
            fontSize: 15.sp,
            height: 1.6,
          ),
        ),
      ],
    );
  }

  Widget _buildFilterChip(BuildContext context, String label) {
    return ActionChip(
      label: Text(
        label,
        style: AppTextStyles.bodySmall.copyWith(
          color: AppColors.darkestGray,
          fontSize: 14.sp,
          letterSpacing: 0.14.w,
        ),
      ),
      avatar: SvgIcon(AppIcons.close, size: 16.sp, color: AppColors.primary),
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.r),
        side: BorderSide(
          color: AppColors.lightGrey,
          width: 1.w,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      onPressed: () {},
    );
  }
}
