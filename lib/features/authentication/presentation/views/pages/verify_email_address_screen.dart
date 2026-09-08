import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/common/widgets/button/elevated_button.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/router/app_router.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';

class VerifyEmailAddressScreen extends StatelessWidget {
  const VerifyEmailAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BODY
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    AppRouter.pop();
                  },
                  icon: Icon(Icons.close, size: JSizes.iconMd.r),
                ),
              ),
              SizedBox(
                height: 260.h,
                width: double.infinity,
                child: Image.asset(JAppImages.emailSend, fit: BoxFit.cover),
              ),
              16.verticalSpace,
              Text(
                JText.verifyEmailTitle,
                style: context.tt.headlineMedium,
                textAlign: TextAlign.center,
              ),
              10.verticalSpace,
              Text(
                JText.verifyEmailSubTitle,
                style: context.tt.bodySmall,
                textAlign: TextAlign.center,
              ),
              16.verticalSpace,
              JElevatedButton(
                onPressed: () {
                  AppRouter.pushNamed("account-create-success");
                },
                buttonText: JText.continueButton,
              ),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    JText.resetEmail,
                    style: context.tt.bodyLarge?.copyWith(
                      color: JColors.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
