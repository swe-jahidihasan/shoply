import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/helpers/extensions.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onViewAllTap;

  const SectionHeader({
    super.key,
    required this.title,
    required this.onViewAllTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: JSizes.xl.h,
        left: JSizes.md.w,
        right: JSizes.md.w,
        bottom: JSizes.md.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: context.tt.titleLarge),
          GestureDetector(
            onTap: onViewAllTap,
            child: Text(
              "View all",
              style: context.tt.labelLarge?.copyWith(color: JColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
