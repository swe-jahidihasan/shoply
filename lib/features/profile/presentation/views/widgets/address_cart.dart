import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/features/profile/presentation/manager/controller/profile_controller.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
    required this.name,
    required this.phone,
    required this.address,
    this.onTap,
    required this.controller,
    required this.isSelected,
  });

  final String name;
  final String phone;
  final String address;
  final ProfileController controller;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: double.infinity,
        padding: EdgeInsets.all(JSizes.md.r),
        decoration: BoxDecoration(
          color: isSelected
              ? JColors.primary.withValues(alpha: 0.3)
              : JColors.white,
          borderRadius: BorderRadius.circular(JSizes.borderRadiusLg.r),
          border: Border.all(
            color: isSelected ? JColors.primary : JColors.grey,
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: context.tt.titleLarge),
                5.verticalSpace,
                Text(phone, style: context.tt.labelLarge),
                5.verticalSpace,
                Text(
                  address,
                  style: context.tt.labelLarge,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            if (isSelected) Icon(Icons.check_circle),
          ],
        ),
      ),
    );
  }
}
