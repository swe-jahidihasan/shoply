import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/common/widgets/button/elevated_button.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/router/app_router.dart';
import 'package:shoply/features/cart/presentation/views/widgets/payment_success_section.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BODY
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: JSizes.md.w,
          vertical: JSizes.md.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // image & title & subtitle
            PaymentSuccessSection(),
            24.verticalSpace,

            // todo : continue button
            JElevatedButton(
              onPressed: () {
                AppRouter.goNamed("main-bottom-nav");
              },
              buttonText: JText.continueShipping,
            ),
          ],
        ),
      ),
    );
  }
}
