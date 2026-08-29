import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/helpers/extensions.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
  });

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
          width: 1.5.w,
          color: JColors.grey.withValues(alpha: 0.5),
        ),
      ),
      child: Row(
        children: [

          // Brand Logo
          Image.asset(JAppImages.nikeLogo, width: 32.w, height: 32.h),
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
                      "Bata",
                      style: context.tt.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    4.horizontalSpace,
                    Icon(
                      Icons.verified,
                      size: 14.sp,
                      color: JColors.primary,
                    ),
                  ],
                ),
                Text(
                  "172 products",
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
