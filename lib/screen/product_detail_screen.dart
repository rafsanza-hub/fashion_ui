import 'package:fashion_ui/core/constants/colors.dart';
import 'package:fashion_ui/core/constants/icons.dart';
import 'package:fashion_ui/core/constants/text_styles.dart';
import 'package:fashion_ui/widget/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

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
            // Product Image Section
            _buildProductImageSection(context),
            // Product Info Section
            _buildProductInfoSection(context),
            // Add to Basket Section
            _buildAddToBasketSection(context),
            // Product Details Section
            _buildProductDetailsSection(context),
            // You May Also Like Section
            _buildYouMayAlsoLikeSection(context),
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
              SvgIcon(AppIcons.shopping, size: 24.sp),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductImageSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/product_detail.jpg',
                height: 510.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                right: 16.w,
                bottom: 16.h,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 36.w,
                    height: 36.h,
                    padding: const EdgeInsets.all(6),
                    decoration: ShapeDecoration(
                      color: AppColors.black.withValues(alpha: 0.35),
                      shape: const OvalBorder(),
                    ),
                    child: SvgIcon(AppIcons.resize,
                        size: 24.sp, color: AppColors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 13.24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Transform.rotate(
                  angle: -0.79,
                  child: Container(
                    width: 5.66.w,
                    height: 5.66.h,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.5.w,
                          color: AppColors.lightGrey,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildProductInfoSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'MOHAN',
            style: AppTextStyles.titleUppercaseMedium.copyWith(
              letterSpacing: 4.w,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Recycle Boucle Knit Cardigan Pink',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.darkGray,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            '\$120',
            style: AppTextStyles.bodyLarge.copyWith(
              color: AppColors.secondary,
              fontSize: 18.sp,
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Color',
                    style: AppTextStyles.bodySmall.copyWith(
                      color: AppColors.darkGray,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      _buildColorOption(AppColors.black, isSelected: true),
                      SizedBox(width: 8.w),
                      _buildColorOption(AppColors.secondary),
                      SizedBox(width: 8.w),
                      _buildColorOption(AppColors.lightGrey),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 48.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Size',
                    style: AppTextStyles.bodySmall.copyWith(
                      color: AppColors.darkGray,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      _buildSizeOption('S', isSelected: true),
                      SizedBox(width: 8.w),
                      _buildSizeOption('M'),
                      SizedBox(width: 8.w),
                      _buildSizeOption('L'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductDetailsSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'MATERIALS',
            style: AppTextStyles.bodySmall.copyWith(
              letterSpacing: 2.w,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'We work with monitoring programmes to ensure compliance with safety, health and quality standards for our products.',
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.darkGray,
              height: 1.71,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'CARE',
            style: AppTextStyles.bodySmall.copyWith(
              letterSpacing: 2.w,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'To keep your jackets and coats clean, you only need to freshen them up and go over them with a cloth or a clothes brush. If you need to dry clean a garment, look for a dry cleaner that uses technologies that are respectful of the environment.',
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.darkGray,
              height: 1.71,
            ),
          ),
          SizedBox(height: 16.h),
          _buildCareInstruction(
              context, 'Do not use bleach', AppIcons.do_not_bleach),
          _buildCareInstruction(
              context, 'Do not tumble dry', AppIcons.do_not_tumble_dry),
          _buildCareInstruction(context, 'Dry clean with tetrachloroethylene',
              AppIcons.do_not_wash),
          _buildCareInstruction(
              context, 'Iron at a maximum of 110ºC/230ºF', AppIcons.iron_low),
          SizedBox(height: 16.h),
          Text(
            'SHIPPING',
            style: AppTextStyles.bodySmall.copyWith(
              letterSpacing: 2.w,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.h),
          _buildExpandableTile(
            context,
            'Free Flat Rate Shipping',
            'Estimated to be delivered on 09/11/2021 - 12/11/2021.',
            AppIcons.shipping,
          ),
          Divider(
              height: 2.h, color: AppColors.darkGray.withValues(alpha: 0.2)),
          _buildExpandableTile(context, 'COD Policy', '', AppIcons.tag),
          Divider(
              height: 2.h, color: AppColors.darkGray.withValues(alpha: 0.2)),
          _buildExpandableTile(context, 'Return Policy', '', AppIcons.refresh),
        ],
      ),
    );
  }

  Widget _buildAddToBasketSection(BuildContext context) {
    return Container(
      height: 56.h,
      color: AppColors.black,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgIcon(AppIcons.shipping, size: 20.sp, color: AppColors.white),
              SizedBox(width: 8.w),
              Text(
                'ADD TO BASKET',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.white,
                  letterSpacing: 0.14.w,
                ),
              ),
            ],
          ),
          SvgIcon(AppIcons.heart, size: 24.sp, color: AppColors.white),
        ],
      ),
    );
  }

  Widget _buildYouMayAlsoLikeSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          const Text(
            'YOU MAY ALSO LIKE',
            style: AppTextStyles.titleUppercaseLarge,
          ),
          SizedBox(height: 16.h),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 165.w / 260.h,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.w,
            children: [
              _buildProductCard(context, '21WN', 'reversible angora cardigan',
                  120, 'assets/images/product1.jpg'),
              _buildProductCard(context, '21WN', 'reversible angora cardigan',
                  120, 'assets/images/product2.jpg'),
              _buildProductCard(
                  context,
                  'lamerei',
                  'reversible angora cardigan',
                  120,
                  'assets/images/product3.jpg'),
              _buildProductCard(
                  context,
                  'lamerei',
                  'reversible angora cardigan',
                  120,
                  'assets/images/product4.jpg'),
            ],
          ),
        ],
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
            color: AppColors.lightGrey.withValues(alpha: 0.1),
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
              height: 120.h,
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

  Widget _buildColorOption(Color color, {bool isSelected = false}) {
    return Container(
      width: 16.w,
      height: 16.h,
      decoration: ShapeDecoration(
        color: color,
        shape: OvalBorder(
          side: isSelected
              ? BorderSide(
                  width: 1.w,
                  color: AppColors.lightGrey,
                )
              : BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildSizeOption(String size, {bool isSelected = false}) {
    return Container(
      width: 24.w,
      height: 24.h,
      decoration: ShapeDecoration(
        color: isSelected ? AppColors.darkestGray : AppColors.white,
        shape: OvalBorder(
          side: BorderSide(
            width: 1.w,
            color: isSelected ? AppColors.darkestGray : AppColors.lightGrey,
          ),
        ),
      ),
      child: Center(
        child: Text(
          size,
          style: AppTextStyles.bodySmall.copyWith(
            color: isSelected ? AppColors.white : AppColors.darkGray,
            fontSize: 10.sp,
          ),
        ),
      ),
    );
  }

  Widget _buildCareInstruction(BuildContext context, String text, String icon) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          SvgIcon(icon,
              size: 24.sp, color: AppColors.darkGray.withValues(alpha: 0.5)),
          SizedBox(width: 8.w),
          Text(
            text,
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.darkGray,
              height: 1.71,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExpandableTile(
      BuildContext context, String title, String subtitle, String icon) {
    return ExpansionTile(
      leading: SvgIcon(icon,
          size: 20.sp, color: AppColors.darkGray.withValues(alpha: 0.5)),
      title: Text(
        title,
        style: AppTextStyles.bodySmall.copyWith(
          color: AppColors.black,
          height: 1.71,
        ),
      ),
      trailing: SvgIcon(AppIcons.down,
          size: 24.sp, color: AppColors.darkGray.withValues(alpha: 0.5)),
      children: subtitle.isNotEmpty
          ? [
              Padding(
                padding: EdgeInsets.only(left: 32.w, bottom: 8.h),
                child: Text(
                  subtitle,
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.darkGray,
                    height: 1.71,
                  ),
                ),
              ),
            ]
          : [],
    );
  }
}
