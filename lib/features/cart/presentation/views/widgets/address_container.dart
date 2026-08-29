import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/helpers/extensions.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({
    super.key,
    required this.houseName,
    required this.phone,
    required this.address,
  });

  final String houseName;
  final String phone;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: JSizes.md.w,
        vertical: JSizes.sm.h,
      ),
      margin: EdgeInsets.symmetric(vertical: JSizes.xs.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(JSizes.md.r),
        border: Border.all(width: 1.w, color: JColors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            houseName,
            style: context.tt.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          5.verticalSpace,
          Text(phone, style: context.tt.labelLarge),
          5.verticalSpace,
          Text(address, style: context.tt.labelLarge),
        ],
      ),
    );
  }
}
