import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoply/core/common/progress_indicator.dart';
import 'package:shoply/core/common/widgets/button/elevated_button.dart';
import 'package:shoply/core/common/widgets/button/outline_button.dart';
import 'package:shoply/core/common/widgets/input_field.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/router/app_router.dart';
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
          padding: EdgeInsets.symmetric(
            horizontal: JSizes.borderRadiusXLg.w,
            vertical: JSizes.borderRadiusXLg.h,
          ),
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // title
                Text(JText.signInTitle, style: context.tt.headlineMedium),
                10.verticalSpace,
                Text(JText.signInSubTitle, style: context.tt.bodySmall),
                24.verticalSpace,

                // email && password field
                JInputField(
                  controller: controller.emailCtr,
                  validator: controller.emailValidation,
                  labelText: JText.emailLabel,
                  hintText: JText.emailHint,
                  prefixIcon: Icon(
                    CupertinoIcons.envelope,
                    size: JSizes.iconSm.r,
                  ),
                ),
                16.verticalSpace,
                Obx(() {
                  return JInputField(
                    controller: controller.passwordCtr,
                    labelText: JText.passwordLabel,
                    hintText: JText.passwordHint,
                    prefixIcon: Icon(
                      CupertinoIcons.lock,
                      size: JSizes.iconSm.r,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        controller.togglePasswordVisibility();
                      },
                      icon: Icon(
                        controller.isPasswordVisible
                            ? CupertinoIcons.eye_slash
                            : CupertinoIcons.eye,
                      ),
                    ),
                    obscureText: controller.isPasswordVisible,
                    validator: controller.passwordValidation,
                  );
                }),
                10.verticalSpace,

                // remember me && forgot password
                RememberAndForgotPass(controller: controller),
                16.verticalSpace,

                // todo: sign in && create button
                Obx(
                  () => JElevatedButton(
                    onPressed: (){
                      controller.signInFormValidation();
                      controller.isLoading ? null : controller.signIn();
                    },
                    buttonText: JText.signIn,
                    child: controller.isLoading ? JProgressIndicator() : null,
                  ),
                ),
                5.verticalSpace,

                // todo : sign up button
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

                // todo: sing in with google && facebook
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
      ),
    );
  }
}
