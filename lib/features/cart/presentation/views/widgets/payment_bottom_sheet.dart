import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/features/cart/presentation/views/widgets/payment_method_card_row.dart';

class PaymentBottomSheet extends StatelessWidget {
  const PaymentBottomSheet({super.key});

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => const PaymentBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {


    // dummy data
    final paymentMethod = [
      {"image": JAppImages.cashOn, "title": "Cash on delivery"},
      {"image": JAppImages.visa, "title": "VISA"},
      {"image": JAppImages.masterCard, "title": "Master Card"},
      {"image": JAppImages.paypal, "title": "Paypal"},
      {"image": JAppImages.easyPaisa, "title": "EasyPaisa"},
    ];

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: JSizes.md.w,
        vertical: JSizes.md.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(JSizes.borderRadiusMd.r),
          topLeft: Radius.circular(JSizes.borderRadiusMd.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(JText.paymentMethod, style: context.tt.titleLarge),
          10.verticalSpace,
          ...paymentMethod.map(
                (item) => PaymentMethodCardRow(
              title: item["title"] ?? "",
              image: item["image"] ?? "",
            ),
          ),
        ],
      ),
    );
  }
}
