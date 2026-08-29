import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/helpers/extensions.dart';

class BrandContainer extends StatelessWidget {
  const BrandContainer({
    super.key,
    required this.brandName,
    required this.brandLogo,
    required this.productCount,
  });

  final String brandName;
  final String brandLogo;
  final String productCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: JSizes.xs.w,
        vertical: JSizes.xs.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(JSizes.borderRadiusMd.r),
        border: Border.all(
          width: 1.w,
          color: JColors.grey.withValues(alpha: 0.5),
        ),
      ),
      child: Row(
        children: [
          // Brand Logo
          Image.asset(brandLogo, width: 32.w, height: 32.h),
          10.horizontalSpace,

          // Brand Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      brandName,
                      style: context.tt.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    4.horizontalSpace,
                    Icon(Icons.verified, size: 14.sp, color: JColors.primary),
                  ],
                ),
                Text(
                  productCount,
                  style: context.tt.labelMedium?.copyWith(
                    color: JColors.darkGrey,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
