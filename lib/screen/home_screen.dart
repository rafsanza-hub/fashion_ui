import 'package:fashion_ui/core/constants/colors.dart';
import 'package:fashion_ui/core/constants/icons.dart';
import 'package:fashion_ui/core/constants/text_styles.dart';
import 'package:fashion_ui/screen/product_detail_screen.dart';
import 'package:fashion_ui/widget/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                color: const Color(0xFFE7EAEF),
                height: MediaQuery.of(context).padding.top),
            // Header Section
            _buildHeader(context),
            // Hero Section
            _buildHeroSection(context),
            // New Arrival Section
            _buildNewArrivalSection(context),
            // Collections Section
            _buildCollectionsSection(context),
            // Banner Section
            _buildBannerSection(context),
            // Just For You Section
            _buildJustForYouSection(context),
            // Trending Section
            _buildTrendingSection(context),
            // About Section
            _buildAboutSection(context),
            // Follow Us Section
            _buildFollowUsSection(context),
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
      color: const Color(0xFFE7EAEF),
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgIcon(AppIcons.menu, size: 24.sp),
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

  Widget _buildHeroSection(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/hero1.jpg',
          height: 600.h,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: Container(
              // color: AppColors.black.withValues(alpha: 0.1),
              ),
        ),
        Positioned(
          left: 61.w,
          top: 520.h,
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: AppColors.black.withValues(alpha: 0.4),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'EXPLORE COLLECTION',
                style:
                    AppTextStyles.bodyLarge.copyWith(color: AppColors.offWhite),
              ),
            ),
          ),
        ),
        Positioned(
          left: 42.w,
          top: 231.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 6.13.w),
                child: Opacity(
                  opacity: 0.7,
                  child: Text(
                    'LUXURY',
                    style: TextStyle(
                      color: AppColors.darkestGray,
                      fontSize: 38.66.sp,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Bodoni Moda 28pt',
                      fontWeight: FontWeight.w700,
                      height: 1.12,
                      letterSpacing: 1.21,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 23.66.w),
                child: Opacity(
                  opacity: 0.7,
                  child: Text(
                    'FASHION',
                    style: TextStyle(
                      color: AppColors.darkestGray,
                      fontSize: 38.66.sp,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Bodoni Moda 28pt',
                      fontWeight: FontWeight.w700,
                      height: 1.12,
                      letterSpacing: 1.21,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      '&',
                      style: TextStyle(
                        color: AppColors.darkestGray,
                        fontSize: 30.59.sp,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Bodoni Moda 28pt',
                        fontWeight: FontWeight.w700,
                        height: 1.12,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      'ACCESSORIES',
                      style: TextStyle(
                        color: AppColors.darkestGray,
                        fontSize: 38.66.sp,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Bodoni Moda 28pt',
                        fontWeight: FontWeight.w700,
                        height: 1.12,
                        letterSpacing: 1.21,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNewArrivalSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          const Text('NEW ARRIVAL', style: AppTextStyles.titleUppercaseLarge),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 26.w,
            children: [
              Text('All',
                  style: AppTextStyles.titleRegular
                      .copyWith(color: AppColors.primary, letterSpacing: 1)),
              Text('Apparel',
                  style: AppTextStyles.titleRegular
                      .copyWith(color: AppColors.mediumGray, letterSpacing: 1)),
              Text('Dress',
                  style: AppTextStyles.titleRegular
                      .copyWith(color: AppColors.mediumGray, letterSpacing: 1)),
              Text('Tshirt',
                  style: AppTextStyles.titleRegular
                      .copyWith(color: AppColors.mediumGray, letterSpacing: 1)),
              Text('Bag',
                  style: AppTextStyles.titleRegular
                      .copyWith(color: AppColors.mediumGray, letterSpacing: 1)),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Container(
                width: 6.w,
                height: 2.h,
                color: AppColors.secondary,
                transform: Matrix4.rotationZ(0.79),
              ),
              const Spacer(),
            ],
          ),
          SizedBox(height: 16.h),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 165.w / 260.16.h,
            mainAxisSpacing: 11.h,
            crossAxisSpacing: 13.w,
            children: [
              _buildProductCard(context, '21WN reversible angora ', 120,
                  'assets/images/product1.jpg'),
              _buildProductCard(context, '21WN reversible angora cardigan', 120,
                  'assets/images/product2.jpg'),
              _buildProductCard(context, '21WN reversible angora cardigan', 120,
                  'assets/images/product3.jpg'),
              _buildProductCard(
                  context, 'Oblong bag', 120, 'assets/images/product4.jpg'),
            ],
          ),
          SizedBox(height: 16.h),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward,
                color: AppColors.titleActive, size: 16.sp),
            label: const Text('Explore More', style: AppTextStyles.bodyLarge),
          ),
        ],
      ),
    );
  }

  Widget _buildCollectionsSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          const Text('COLLECTIONS', style: AppTextStyles.titleUppercaseLarge),
          SizedBox(height: 16.h),
          Stack(
            children: [
              Image.asset(
                'assets/images/coll1.jpg',
                height: 240.h,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Positioned(
                right: 16.w,
                top: 22.h,
                child: Opacity(
                  opacity: 0.5,
                  child: Text(
                    '10',
                    style: TextStyle(
                      color: AppColors.darkestGray,
                      fontSize: 162.7.sp,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Bodoni Moda 28pt',
                      fontWeight: FontWeight.w800,
                      height: 1.5,
                      letterSpacing: -31.5,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 16.w,
                top: 99.h,
                child: Text(
                  'October',
                  style: TextStyle(
                    color: AppColors.offWhite,
                    fontSize: 41.86.sp,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Bodoni Moda 28pt',
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                  ),
                ),
              ),
              Positioned(
                right: 16.w,
                top: 143.h,
                child: Text(
                  'COLLECTION',
                  style: TextStyle(
                    color: AppColors.offWhite,
                    fontSize: 12.93.sp,
                    fontFamily: 'Tenor Sans',
                    fontWeight: FontWeight.w400,
                    height: 2.25,
                    letterSpacing: 6.06,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Stack(
            children: [
              Image.asset(
                'assets/images/coll2.jpg',
                height: 296.h,
                width: 260.w,
                fit: BoxFit.fill,
              ),
              Positioned(
                left: 80.w,
                top: 32.67.h,
                child: Opacity(
                  opacity: 0.8,
                  child: Text(
                    'Autumn',
                    style: TextStyle(
                      color: AppColors.darkestGray,
                      fontSize: 41.86.sp,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Bodoni Moda 28pt',
                      fontWeight: FontWeight.w700,
                      height: 62.8 / 41.86,
                      letterSpacing: -1,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 100.w,
                top: 77.82.h,
                child: Text(
                  'COLLECTION',
                  style: TextStyle(
                    color: AppColors.darkestGray,
                    fontSize: 11.32.sp,
                    fontFamily: 'Tenor Sans',
                    fontWeight: FontWeight.w400,
                    height: 2.25,
                    letterSpacing: 5.31,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBannerSection(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://picsum.photos/375/176',
          height: 176.h,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Positioned.fill(
          child: Container(
            color: AppColors.black.withValues(alpha: 0.1),
          ),
        ),
        Positioned(
          right: 16.w,
          top: 75.h,
          child: Container(
            width: 33.27.w,
            height: 33.27.h,
            decoration: const ShapeDecoration(
              color: Colors.black,
              shape: OvalBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildJustForYouSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          const Text('JUST FOR YOU', style: AppTextStyles.titleUppercaseLarge),
          SizedBox(height: 16.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildProductCard(context, 'Harris Tweed Three button Jacket',
                    120, 'assets/images/product1.jpg'),
                SizedBox(width: 16.w),
                _buildProductCard(
                    context,
                    'Cashmere Blend Cropped Jacket SW1WJ285-AM',
                    120,
                    'assets/images/product1.jpg'),
                SizedBox(width: 16.w),
                _buildProductCard(context, 'Harris Tweed Three-button Jacket',
                    120, 'assets/images/product1.jpg'),
                SizedBox(width: 16.w),
                _buildProductCard(context, '1WN reversible angora cardigan',
                    120, 'assets/images/product1.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrendingSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          const Text('@TRENDING', style: AppTextStyles.titleUppercaseLarge),
          SizedBox(height: 16.h),
          Wrap(
            spacing: 8.w,
            runSpacing: 8.h,
            children: [
              _buildTagChip(context, '#2021'),
              _buildTagChip(context, '#spring'),
              _buildTagChip(context, '#collection'),
              _buildTagChip(context, '#fall'),
              _buildTagChip(context, '#dress'),
              _buildTagChip(context, '#autumncollection'),
              _buildTagChip(context, '#openfashion'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAboutSection(BuildContext context) {
    return Container(
      color: AppColors.inputBackground.withValues(alpha: 0.5),
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          Text(
            'Making a luxurious lifestyle accessible for a generous group of women is our daily drive.',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.darkGray,
              letterSpacing: 0.14,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildFeatureCard(
                  context, 'Fast shipping. Free on orders over \$25.', '50/35'),
              _buildFeatureCard(context,
                  'Sustainable process \nfrom start to finish.', '52/37'),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildFeatureCard(context,
                  'Unique designs \nand high-quality materials.', '54/38'),
              _buildFeatureCard(context,
                  'Fast shipping. \nFree on orders over \$25.', '54/38'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFollowUsSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          const Text('FOLLOW US', style: AppTextStyles.titleUppercaseLarge),
          SizedBox(height: 16.h),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 1,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 14.w,
            children: [
              _buildSocialCard(context, '@mia', '164/164'),
              _buildSocialCard(context, '@_jihyn', '164/164'),
              _buildSocialCard(context, '@mia', '164/164'),
              _buildSocialCard(context, '@_jihyn', '164/164'),
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
            'support@openui.design\n+60 fg825 876\n08:00 - 22:00 - Everyday',
            style:
                AppTextStyles.bodyLarge.copyWith(color: AppColors.darkestGray),
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
            color: AppColors.mediumGray.withValues(alpha: 0.1),
            alignment: Alignment.center,
            child: Text(
              'Copyright© OpenUI All Rights Reserved.',
              style:
                  AppTextStyles.bodySmall.copyWith(color: AppColors.darkGray),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(
      BuildContext context, String title, double price, String image) {
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 165.w,
            height: 200.h,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 4.h),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.darkestGray,
              letterSpacing: 0,
              height: 16 / 12,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            '\$$price',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.secondary,
              letterSpacing: 0,
              fontSize: 15.sp,
              height: 24 / 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTagChip(BuildContext context, String tag) {
    return Chip(
      elevation: 0,
      label: Text(tag,
          style:
              AppTextStyles.bodySmall.copyWith(color: AppColors.darkestGray)),
      backgroundColor: AppColors.inputBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
        side: const BorderSide(color: Colors.transparent, width: 0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
    );
  }

  Widget _buildFeatureCard(
      BuildContext context, String text, String imageSize) {
    final dimensions = imageSize.split('/');
    return Column(
      children: [
        Image.network(
          'https://picsum.photos/$imageSize',
          width: double.parse(dimensions[0]).w,
          height: double.parse(dimensions[1]).h,
          fit: BoxFit.contain,
        ),
        SizedBox(height: 8.h),
        Text(
          text,
          style: AppTextStyles.bodySmall.copyWith(color: AppColors.darkGray),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildSocialCard(
      BuildContext context, String username, String imageSize) {
    final dimensions = imageSize.split('/');
    return Column(
      children: [
        Image.network(
          'https://picsum.photos/$imageSize',
          width: double.parse(dimensions[0]).w,
          height: double.parse(dimensions[1]).h,
          fit: BoxFit.fill,
        ),
        Container(
          width: double.parse(dimensions[0]).w,
          padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 12.h),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0.38, 1.00),
              end: const Alignment(0.38, -0.00),
              colors: [AppColors.black, AppColors.black.withValues(alpha: 0)],
            ),
          ),
          child: Text(
            username,
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.white,
              letterSpacing: 1,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
