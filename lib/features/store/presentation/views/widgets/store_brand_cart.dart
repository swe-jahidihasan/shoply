import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/helpers/extensions.dart';

class StoreBrandCard extends StatelessWidget {
  final String logo;
  final String title;
  final String productCount;
  final VoidCallback? onTap;

  const StoreBrandCard({
    super.key,
    required this.logo,
    required this.title,
    required this.productCount,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: JSizes.xs.w,
          vertical: JSizes.xs.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(JSizes.borderRadiusSm.r),
          border: Border.all(width: 1.w, color: JColors.grey),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(logo),
            10.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(title, style: context.tt.bodyLarge),
                    4.horizontalSpace,
                    Icon(
                      Icons.check_circle,
                      size: JSizes.iconXs,
                      color: JColors.primary,
                    ),
                  ],
                ),
                Text(productCount, style: context.tt.labelLarge),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
