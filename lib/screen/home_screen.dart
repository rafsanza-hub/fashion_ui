import 'dart:math';

import 'package:fashion_ui/core/constants/colors.dart';
import 'package:fashion_ui/core/constants/icons.dart';
import 'package:fashion_ui/core/constants/text_styles.dart';
import 'package:fashion_ui/screen/category_screen.dart';
import 'package:fashion_ui/widget/app_footer.dart';
import 'package:fashion_ui/widget/custom_appbar.dart';
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
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Container(
            //     color: const Color(0xFFE7EAEF),
            //     height: MediaQuery.of(context).padding.top),
            // // Header Section
            // _buildHeader(context),
            // Hero Section
            _buildHeroSection(context),
            SizedBox(height: 27.r),
            // New Arrival Section
            _buildNewArrivalSection(context),
            SizedBox(height: 60.h),

            // Brands Section
            _buildBrandsSection(),
            SizedBox(height: 59.24.r),

            // Collections Section
            _buildCollectionsSection(context),
            SizedBox(height: 40.r),

            // Banner Section
            _buildBannerSection(context),
            SizedBox(height: 72.r),

            // Just For You Section
            _buildJustForYouSection(context),
            SizedBox(height: 64.r),

            // Trending Section
            _buildTrendingSection(context),
            SizedBox(height: 36.r),

            // About Section
            _buildAboutSection(context),

            SizedBox(height: 32.97.h),

            // Follow Us Section
            _buildFollowUsSection(context),
            SizedBox(height: 41.78.h),

            // Footer Section
            const AppFooter(),
          ],
        ),
      ),
    );
  }

  Column _buildBrandsSection() {
    return Column(
      children: [
        const SlantedBoxDivider(),
        SizedBox(height: 34.44.h),
        Row(
          children: [
            Expanded(
              child: SvgPicture.asset('assets/svg/Prada.svg'),
            ),
            Expanded(
              child: SvgPicture.asset('assets/svg/Burberry.svg'),
            ),
            Expanded(
              child: SvgPicture.asset('assets/svg/Boss.svg'),
            ),
          ],
        ),
        SizedBox(height: 22.58.h),
        Row(
          children: [
            Expanded(
              child: SvgPicture.asset('assets/svg/Catier.svg'),
            ),
            Expanded(
              child: SvgPicture.asset('assets/svg/Gucci.svg'),
            ),
            Expanded(
              child: SvgPicture.asset('assets/svg/Tiffany & Co.svg'),
            ),
          ],
        ),
        SizedBox(height: 41.5.h),
        const SlantedBoxDivider(),
      ],
    );
  }

  // Widget _buildHeader(BuildContext context) {
  //   return Container(
  //     height: 60.h,
  //     color: const Color(0xFFE7EAEF),
  //     padding: EdgeInsets.symmetric(horizontal: 16.w),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         SvgIcon(AppIcons.menu, size: 24.sp),
  //         SvgPicture.asset(
  //           'assets/svg/header.svg',
  //           width: 78.w,
  //           height: 32.h,
  //         ),
  //         Row(
  //           children: [
  //             SvgIcon(AppIcons.search, size: 24.sp),
  //             SizedBox(width: 16.w),
  //             SvgIcon(AppIcons.shopping, size: 24.sp),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }

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
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Column(
        children: [
          Text('NEW ARRIVAL', style: AppTextStyles.titleUppercaseLarge),
          const SlantedBoxDivider(),
          SizedBox(height: 13.75.h),
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
          SizedBox(height: 13.h),
          GridView.count(
            padding: EdgeInsets.zero,
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 165.w / 260.16.h,
            mainAxisSpacing: 11.84.h,
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
          SizedBox(height: 27.84.h),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward,
                color: AppColors.titleActive, size: 16.sp),
            label: Text('Explore More', style: AppTextStyles.bodyLarge),
          ),
        ],
      ),
    );
  }

  Widget _buildCollectionsSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Column(
        children: [
          Text('COLLECTIONS', style: AppTextStyles.titleUppercaseLarge),
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
          SizedBox(height: 40.h),
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
    return SizedBox(
      height: 176.h,
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/banner.png',
            height: 176.h,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Positioned.fill(
            child: Container(
              color: AppColors.black.withValues(alpha: 0.1),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
                width: 33.27.w,
                height: 33.27.h,
                decoration: ShapeDecoration(
                  color: Colors.black.withValues(alpha: 0.5),
                  shape: const OvalBorder(),
                ),
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: AppColors.white,
                  size: 20.sp,
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildJustForYouSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Column(
        children: [
          Text('JUST FOR YOU', style: AppTextStyles.titleUppercaseLarge),
          const SlantedBoxDivider(),
          SizedBox(height: 23.06.h),
          SingleChildScrollView(
            padding: EdgeInsets.zero,
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
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Text('@TRENDING', style: AppTextStyles.titleUppercaseLarge),
          SizedBox(height: 8.h),
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
      color: const Color(0xFFF2F2F2).withValues(alpha: 0.5),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 28.h),
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/svg/header.svg',
            width: 78.w,
            height: 32.h,
          ),
          SizedBox(height: 16.17.h),
          SizedBox(
            width: 285.04.w,
            child: Text(
              'Making a luxurious lifestyle accessible for a generous group of women is our daily drive.',
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.darkGray,
                letterSpacing: 0.14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 4.94.h),
          const SlantedBoxDivider(),
          SizedBox(height: 13.6.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildFeatureCard(
                  context,
                  'Fast shipping. Free on orders over \$25.',
                  'assets/images/sticker1.png'),
              _buildFeatureCard(
                  context,
                  'Sustainable process \nfrom start to finish.',
                  'assets/images/sticker2.png'),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildFeatureCard(
                  context,
                  'Unique designs \nand high-quality materials.',
                  'assets/images/sticker3.png'),
              _buildFeatureCard(
                  context,
                  'Fast shipping. \nFree on orders over \$25.',
                  'assets/images/sticker4.png'),
            ],
          ),
          SizedBox(height: 33.17.h),

          // Divider
          SvgPicture.asset('assets/svg/divider.svg'),
        ],
      ),
    );
  }

  Widget _buildFollowUsSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Text('FOLLOW US', style: AppTextStyles.titleUppercaseLarge),
          SizedBox(height: 2.03.h),
          SvgIcon(AppIcons.instagram, size: 24.sp),
          SizedBox(height: 18.h),
          GridView.count(
            padding: EdgeInsets.zero,
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 1,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 14.w,
            children: [
              _buildSocialCard(context, '@mia', 'assets/images/owner1.jpg'),
              _buildSocialCard(context, '@_jihyn', 'assets/images/owner2.jpg'),
              _buildSocialCard(context, '@mia', 'assets/images/owner3.jpg'),
              _buildSocialCard(context, '@_jihyn', 'assets/images/owner4.jpg'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(
      BuildContext context, String title, double price, String image) {
    return GestureDetector(
      onTap: () => Get.to(() => const CategoryGridView()),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 165.w,
            height: 200.h,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 4.h),
          SizedBox(
            width: 165.w,
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.darkestGray,
                fontSize: 12.sp,
                letterSpacing: 0,
                height: 16 / 12,
              ),
              textAlign: TextAlign.center,
            ),
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

  Widget _buildFeatureCard(BuildContext context, String text, String image) {
    return Column(
      children: [
        Image.asset(
          image,
          height: 54.45.h,
          fit: BoxFit.contain,
        ),
        SizedBox(height: 8.h),
        SizedBox(
          width: 150.w,
          child: Text(
            text,
            style: AppTextStyles.bodySmall.copyWith(color: AppColors.darkGray),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildSocialCard(BuildContext context, String username, String image) {
    return Stack(
      children: [
        Image.asset(
          image,
          width: 164.w,
          height: 164.h,
          fit: BoxFit.fill,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 39.h,
            width: 164.w,
            padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 12.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [AppColors.black, AppColors.black.withValues(alpha: 0)],
              ),
            ),
            child: Text(
              username,
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.white,
                letterSpacing: 1,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
      ],
    );
  }
}

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

class CustomHeaderAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomHeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
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

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
