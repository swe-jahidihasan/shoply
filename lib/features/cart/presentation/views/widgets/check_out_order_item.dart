import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/helpers/extensions.dart';

class CheckOutOrderItem extends StatelessWidget {
  const CheckOutOrderItem({
    super.key,
    required this.image,
    required this.brand,
    required this.productName,
    required this.color,
    required this.size,
  });

  final String image;
  final String brand;
  final String productName;
  final String color;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: JSizes.sm.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(JSizes.borderRadiusLg.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.h,
            width: 50.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(JSizes.borderRadiusSm.r),
              color: Color(0xFFF2F2F2),
            ),
            child: Image.asset(image),
          ),
          10.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(brand, style: context.tt.labelLarge),
                    Icon(
                      Icons.check_circle,
                      size: JSizes.iconXs,
                      color: JColors.primary,
                    ),
                  ],
                ),
                Text(
                  productName,
                  style: context.tt.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Color ",
                            style: context.tt.bodyMedium?.copyWith(
                              color: JColors.darkGrey,
                            ),
                          ),
                          TextSpan(
                            text: "$color ",
                            style: context.tt.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "Storage ",
                            style: context.tt.bodyMedium?.copyWith(
                              color: JColors.darkGrey,
                            ),
                          ),
                          TextSpan(
                            text: size,
                            style: context.tt.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
