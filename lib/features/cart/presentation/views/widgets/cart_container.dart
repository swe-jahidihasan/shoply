import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/helpers/extensions.dart';

class CartContainer extends StatelessWidget {
  const CartContainer({
    super.key,
    required this.productName,
    required this.brand,
    required this.price,
    required this.image,
    required this.color,
    required this.storage,
  });

  final String productName;
  final String brand;
  final String price;
  final String image;
  final String color;
  final String storage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: JSizes.md.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(JSizes.borderRadiusLg.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
           padding: EdgeInsets.symmetric(horizontal: JSizes.xs.w,vertical: JSizes.xs.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(JSizes.borderRadiusSm.r),
              color: Color(0xFFF2F2F2),
            ),
            child: Image.asset(image,height: 30.h,width: 40.w,),
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
                            text: storage,
                            style: context.tt.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                10.verticalSpace,
                Row(
                  children: [
                    CircleAvatar(
                      radius: 12.r,
                      backgroundColor: Color(0xFFF2F2F2),
                      child: Icon(Icons.remove, size: JSizes.iconSm.r),
                    ),
                    5.horizontalSpace,
                    CircleAvatar(
                      radius: 12.r,
                      backgroundColor: JColors.primary,
                      foregroundColor: JColors.white,
                      child: Icon(Icons.add, size: JSizes.iconSm.r),
                    ),
                    const Spacer(),
                    Text(
                      "\$ $price",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
