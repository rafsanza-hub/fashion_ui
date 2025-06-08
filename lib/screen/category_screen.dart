import 'package:fashion_ui/widget/app_footer.dart';
import 'package:fashion_ui/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fashion_ui/core/constants/colors.dart';
import 'package:fashion_ui/core/constants/icons.dart';
import 'package:fashion_ui/core/constants/text_styles.dart';
import 'package:fashion_ui/widget/svg_icon.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 18.9.h),
            // Filter Section
            _buildFilterSection(context),
            SizedBox(height: 25.h),
            // Products Grid Section
            _buildProductsGridSection(context),
            // Pagination Section
            _buildPaginationSection(context),
            SizedBox(height: 102.9.h),

            // Footer Section
            const AppFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
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
                      size: 20.sp,
                      color: AppColors.darkGray.withValues(alpha: 0.5)),
                  SizedBox(width: 16.w),
                  SvgIcon(AppIcons.shipping,
                      size: 20.sp,
                      color: AppColors.darkGray.withValues(alpha: 0.5)),
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
        padding: EdgeInsets.zero,
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
                      : AppColors.lightGrey.withValues(alpha: 0.1),
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
              child: SvgIcon(AppIcons.back,
                  size: 24.sp, color: AppColors.darkGray),
            ),
          ),
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
                  size: 16.sp, color: AppColors.secondary),
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: Color(0xFFDEDEDE),
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 6,
        children: [
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF333333),
              fontSize: 14.sp,
              fontFamily: 'Tenor Sans',
              fontWeight: FontWeight.w400,
              height: 1.14,
              letterSpacing: 0.14,
            ),
          ),
          const SizedBox(width: 16, height: 16, child: SvgIcon(AppIcons.close)),
        ],
      ),
    );
  }
}
