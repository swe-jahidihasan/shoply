import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/helpers/extensions.dart';

class PriceAndShareSection extends StatelessWidget {
  const PriceAndShareSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
            vertical: 1.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            color: JColors.yellow,
          ),
          child: Text("59%", style: context.tt.labelLarge),
        ),
        10.horizontalSpace,
        Text(
          "\$500",
          style: context.tt.titleMedium?.copyWith(
            color: JColors.darkGrey,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        10.horizontalSpace,
        Text("\$399", style: context.tt.titleLarge),
        const Spacer(),
        Icon(Icons.share, size: JSizes.iconMd.r),
      ],
    );
  }
}
