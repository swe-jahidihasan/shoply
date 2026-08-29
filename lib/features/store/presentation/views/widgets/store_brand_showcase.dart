import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/features/store/presentation/views/widgets/store_brand_cart.dart';

class StoreBrandShowcase extends StatelessWidget {
  final String logo;
  final String title;
  final String productCount;
  final List<String> images;

  const StoreBrandShowcase({
    super.key,
    required this.logo,
    required this.title,
    required this.productCount,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: JSizes.md.h),
      padding: EdgeInsets.symmetric(
        horizontal: JSizes.md.w,
        vertical: JSizes.sm.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(JSizes.borderRadiusLg.r),
        border: Border.all(width: 1.w, color: JColors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StoreBrandCard(
            logo: logo,
            title: title,
            productCount: productCount,
          ),
          10.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images
                .map((img) => Expanded(child: _buildTopProductImage(img)))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildTopProductImage(String image) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: JSizes.md.w,
        vertical: JSizes.sm.h,
      ),
      margin: EdgeInsets.only(right: JSizes.sm.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(JSizes.borderRadiusSm.r),
        color: const Color(0xFFF3F3F3),
      ),
      child: Image.asset(image, fit: BoxFit.contain),
    );
  }
}
