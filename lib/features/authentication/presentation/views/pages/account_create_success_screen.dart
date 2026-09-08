import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/common/widgets/button/elevated_button.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/router/app_router.dart';

class AccountCreateSuccessScreen extends StatelessWidget {
  const AccountCreateSuccessScreen({super.key});

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
              SizedBox(
                height: 260.h,
                width: double.infinity,
                child: Image.asset(
                  JAppImages.accountSuccess,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                JText.accountSuccessTitle,
                style: context.tt.headlineMedium,
                textAlign: TextAlign.center,
              ),
              10.verticalSpace,
              Text(
                JText.accountSuccessSubTitle,
                style: context.tt.bodySmall,
                textAlign: TextAlign.center,
              ),
              24.verticalSpace,
              JElevatedButton(onPressed: () {
                AppRouter.goNamed("signIn");
              }, buttonText: JText.done),
            ],
          ),
        ),
      ),
    );
  }
}
