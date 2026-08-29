import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/common/widgets/button/elevated_button.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/router/app_router.dart';

class ProductViewScreen extends StatelessWidget {
  const ProductViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: JSizes.md.w,
          vertical: JSizes.md.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // image
            Container(
              height: 250.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(JSizes.borderRadiusLg.r),
              ),
              child: Image.asset(JAppImages.phone, fit: BoxFit.cover),
            ),
            16.verticalSpace,

            // todo: close button
            JElevatedButton(onPressed: () {
              AppRouter.pop();
            }, buttonText: "Close"),
          ],
        ),
      ),
    );
  }
}
