import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/helpers/extensions.dart';

class OrderStatusCard extends StatelessWidget {
  final String status;
  final String statusDate;
  final String orderId;
  final String deliveryDate;
  final VoidCallback? onTap;

  const OrderStatusCard({
    super.key,
    required this.status,
    required this.statusDate,
    required this.orderId,
    required this.deliveryDate,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(JSizes.md.r),
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(JSizes.borderRadiusLg.r),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.directions_boat_filled, size: JSizes.iconSm.r),
                10.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      status,
                      style: context.tt.bodyLarge?.copyWith(
                        color: JColors.primary,
                      ),
                    ),
                    2.verticalSpace,
                    Text(
                      statusDate,
                      style: context.tt.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Icon(Icons.arrow_forward_ios, size: JSizes.iconSm.r),
              ],
            ),
            10.verticalSpace,
            Row(
              children: [
                Icon(Icons.local_offer_outlined, size: JSizes.iconSm.r),
                10.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order", style: context.tt.bodySmall),
                    Text(
                      orderId,
                      style: context.tt.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Icon(
                  Icons.calendar_today_outlined,
                  size: JSizes.iconSm.r,
                  color: Colors.black87,
                ),
                10.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order", style: context.tt.bodySmall),
                    Text(
                      deliveryDate,
                      style: context.tt.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
