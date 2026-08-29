import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoply/core/common/widgets/color_chip.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/features/products/presentation/manager/controller/products_controller.dart';

class ProductSelectionArea extends StatelessWidget {
  const ProductSelectionArea({
    super.key,
    required this.controller,
  });

  final ProductsController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isCheck = controller.isCheckout;
      return isCheck
          ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(JText.color, style: context.tt.titleLarge),
          10.verticalSpace,
          Row(
            children: [
              JColorChoiceChip(
                color: Colors.grey,
                isSelected: true,
                onTap: () {},
              ),
              10.horizontalSpace,
              JColorChoiceChip(
                color: Colors.black,
                isSelected: false,
                onTap: () {},
              ),
              10.horizontalSpace,
              JColorChoiceChip(
                color: Colors.blue,
                isSelected: false,
                onTap: () {},
              ),
            ],
          ),
          16.verticalSpace,
          Text(JText.storage, style: context.tt.titleLarge),
          10.verticalSpace,
          Obx(() {
            return Row(
              children: List.generate(3, (index) {
                final isSelected =
                    controller.isSelectedVariation == index;
                return GestureDetector(
                  onTap: () {
                    controller.toggleStorageVariation(index);
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: JSizes.sm.w),
                    padding: EdgeInsets.symmetric(
                      horizontal: JSizes.sm.w,
                      vertical: JSizes.xs.h,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? JColors.primary
                          : JColors.white,
                      borderRadius: BorderRadius.circular(
                        JSizes.borderRadiusMd,
                      ),
                      border: Border.all(
                        width: 1.w,
                        color: JColors.grey,
                      ),
                    ),
                    child: Row(
                      children: [
                        isSelected
                            ? Icon(
                          Icons.check,
                          size: JSizes.iconXs,
                          color: isSelected
                              ? JColors.white
                              : Colors.transparent,
                        )
                            : SizedBox.shrink(),
                        2.horizontalSpace,
                        Text(
                          "64 GB",
                          style: context.tt.labelLarge
                              ?.copyWith(
                            color: isSelected
                                ? JColors.white
                                : JColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            );
          }),
        ],
      )
          : SizedBox.shrink();
    });
  }
}
