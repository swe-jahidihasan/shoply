import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoply/core/common/widgets/button/elevated_button.dart';
import 'package:shoply/core/common/widgets/input_field.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/router/app_router.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/features/authentication/presentation/manager/controller/forgot_pass_controller.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgotPassController());
    return Scaffold(
      // BODY
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back, size: JSizes.iconMd.r),
              ),
              24.verticalSpace,
              Text(JText.forgotTitle, style: context.tt.headlineMedium),
              10.verticalSpace,
              Text(JText.forgotSubTitle, style: context.tt.bodySmall),
              24.verticalSpace,
              JInputField(
                controller: controller.emailCtr,
                labelText: JText.emailLabel,
                hintText: JText.emailHint,
                prefixIcon: Icon(CupertinoIcons.mail, size: JSizes.iconSm.r),
              ),
              16.verticalSpace,
              JElevatedButton(
                onPressed: () {
                  AppRouter.pushNamed("email-send-success");
                },
                buttonText: JText.submit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
