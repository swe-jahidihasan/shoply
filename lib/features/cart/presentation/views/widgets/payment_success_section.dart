import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';

class PaymentSuccessSection extends StatelessWidget {
  const PaymentSuccessSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(JAppImages.paymentStatus),
        16.verticalSpace,
        Text(JText.paymentSuccess, style: context.tt.headlineMedium),
        10.verticalSpace,
        Text(JText.youItemWillBeShippedSoon, style: context.tt.labelLarge),
      ],
    );
  }
}
