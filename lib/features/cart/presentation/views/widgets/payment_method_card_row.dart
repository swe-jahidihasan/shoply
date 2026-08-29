import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/helpers/extensions.dart';

class PaymentMethodCardRow extends StatelessWidget {
  const PaymentMethodCardRow({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40.h,
          width: 50.w,
          margin: EdgeInsets.symmetric(vertical: JSizes.xs.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(JSizes.borderRadiusSm.r),
            color: Color(0xFFF2F2F2),
          ),
          child: Image.asset(image),
        ),
        5.horizontalSpace,
        Text(title, style: context.tt.titleLarge),
      ],
    );
  }
}
