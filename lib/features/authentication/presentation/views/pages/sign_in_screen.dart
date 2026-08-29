import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoply/core/common/widgets/button/elevated_button.dart';
import 'package:shoply/core/common/widgets/button/outline_button.dart';
import 'package:shoply/core/common/widgets/check_box.dart';
import 'package:shoply/core/common/widgets/input_field.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/router/app_router.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/features/authentication/presentation/manager/controller/sign_in_controller.dart';
import 'package:shoply/features/authentication/presentation/views/widgets/auth_container.dart';
import 'package:shoply/features/authentication/presentation/views/widgets/remember_and_forgot_pass.dart';
import 'package:shoply/features/authentication/presentation/views/widgets/sign_in_with_divider.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInController());
    return Scaffold(
      //BODY
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(JText.signInTitle, style: context.tt.headlineMedium),
              10.verticalSpace,
              Text(JText.signInSubTitle, style: context.tt.bodySmall),
              24.verticalSpace,
              JInputField(
                controller: controller.emailCtr,
                labelText: JText.emailLabel,
                hintText: JText.emailHint,
                prefixIcon: Icon(
                  CupertinoIcons.envelope,
                  size: JSizes.iconSm.r,
                ),
              ),
              16.verticalSpace,
              JInputField(
                controller: controller.passwordCtr,
                labelText: JText.passwordLabel,
                hintText: JText.passwordHint,
                prefixIcon: Icon(CupertinoIcons.lock, size: JSizes.iconSm.r),
                suffixIcon: Icon(CupertinoIcons.eye_slash),
              ),
              10.verticalSpace,

              // remember me && forgot password
              RememberAndForgotPass(controller: controller),
              16.verticalSpace,

              // todo: sign in && create button
              JElevatedButton(onPressed: () {}, buttonText: JText.signIn),
              5.verticalSpace,
              JOutlineButton(
                onPressed: () {
                  AppRouter.pushNamed("signUp");
                },
                buttonText: JText.createAccount,
              ),
              24.verticalSpace,

              // divider
              AuthDivider(title: JText.or),
              16.verticalSpace,

              // sing in with google && facebook
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AuthContainer(onPressed: () {}, image: JAppImages.google),
                  10.horizontalSpace,
                  AuthContainer(onPressed: () {}, image: JAppImages.facebook),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

