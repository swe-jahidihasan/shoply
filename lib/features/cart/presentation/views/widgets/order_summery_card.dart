import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoply/core/common/divider.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/features/cart/presentation/manager/controller/cart_controller.dart';
import 'package:shoply/features/cart/presentation/views/widgets/address_bottom_sheet.dart';
import 'package:shoply/features/cart/presentation/views/widgets/order_summery_row.dart';
import 'package:shoply/features/cart/presentation/views/widgets/payment_bottom_sheet.dart';
import 'package:shoply/features/cart/presentation/views/widgets/payment_method_row.dart';

class OrderSummeryCard extends StatelessWidget {
  const OrderSummeryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: JSizes.md.w,
        vertical: JSizes.md.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(JSizes.borderRadiusMd.r),
        border: Border.all(width: 1.w, color: JColors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...controller.summaryItems.map(
                (item) => OrderSummerRow(
              title: item["title"] ?? "",
              value: item["value"] ?? "",
            ),
          ),
          10.verticalSpace,
          OrderSummerRow(title: 'Total', value: '7855.00', isTotal: true),
          10.verticalSpace,
          JDivider(),
          10.verticalSpace,

          PaymentMethodRow(
            title: JText.paymentMethod,
            onTap: () {
              PaymentBottomSheet.show(context);
            },
          ),
          16.verticalSpace,
          Row(
            children: [
              Image.asset(JAppImages.masterCard),
              Text(JText.masterCard, style: context.tt.titleMedium),
            ],
          ),
          16.verticalSpace,
          PaymentMethodRow(
            title: JText.shippingAddress,
            onTap: () {
              AddressBottomSheet.show(context);
            },
          ),
          10.verticalSpace,
          Text(
            "UnKnown Pro",
            style: context.tt.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          10.verticalSpace,
          Row(
            children: [
              Icon(CupertinoIcons.phone, size: JSizes.iconSm.r),
              5.horizontalSpace,
              Text("+88013887956", style: context.tt.bodyLarge),
            ],
          ),
          Row(
            children: [
              Icon(CupertinoIcons.person, size: JSizes.iconSm.r),
              5.horizontalSpace,
              Text(
                "House No.452,Dhaka,Bangladesh",
                style: context.tt.bodyLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
