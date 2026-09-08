import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoply/core/common/progress_indicator.dart';
import 'package:shoply/core/common/widgets/button/elevated_button.dart';
import 'package:shoply/core/common/widgets/input_field.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/features/authentication/presentation/manager/controller/sign_up_controller.dart';
import 'package:shoply/features/authentication/presentation/views/widgets/auth_container.dart';
import 'package:shoply/features/authentication/presentation/views/widgets/check_box.dart';
import 'package:shoply/features/authentication/presentation/views/widgets/sign_in_with_divider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Scaffold(
      //BODY
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Form(
            key: controller.signUpKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(JText.signUpTitle, style: context.tt.headlineMedium),
                30.verticalSpace,

                // first name && last name
                Row(
                  children: [
                    Expanded(
                      child: JInputField(
                        controller: controller.firstNameCtr,
                        labelText: JText.firstNameLabel,
                        hintText: JText.firstNameHint,
                        validator: controller.firstNameValidation,
                        prefixIcon: Icon(
                          CupertinoIcons.person,
                          size: JSizes.iconSm.r,
                        ),
                      ),
                    ),
                    8.horizontalSpace,
                    Expanded(
                      child: JInputField(
                        controller: controller.lastNameCtr,
                        labelText: JText.lastNameLabel,
                        hintText: JText.lastNameHint,
                        validator: controller.lastNameValidation,
                        prefixIcon: Icon(
                          CupertinoIcons.person,
                          size: JSizes.iconSm.r,
                        ),
                      ),
                    ),
                  ],
                ),
                16.verticalSpace,

                // email
                JInputField(
                  controller: controller.emailCtr,
                  labelText: JText.emailLabel,
                  hintText: JText.emailHint,
                  validator: controller.emailValidation,
                  prefixIcon: Icon(CupertinoIcons.mail, size: JSizes.iconSm.r),
                ),
                16.verticalSpace,

                // phone
                JInputField(
                  controller: controller.phoneCtr,
                  labelText: JText.phoneLabel,
                  hintText: JText.phoneHint,
                  validator: controller.phoneValidation,
                  prefixIcon: Icon(CupertinoIcons.phone, size: JSizes.iconSm.r),
                ),
                16.verticalSpace,

                // password
                JInputField(
                  controller: controller.passwordCtr,
                  labelText: JText.passwordLabel,
                  hintText: JText.passwordHint,
                  validator: controller.passwordValidation,
                  prefixIcon: Icon(CupertinoIcons.lock, size: JSizes.iconSm.r),
                  suffixIcon: Icon(CupertinoIcons.eye, size: JSizes.iconSm.r),
                ),
                16.verticalSpace,

                // checkbox
                CheckBox(controller: controller),
                // todo : create button
                Obx(() {
                  return JElevatedButton(
                    onPressed: () {
                      controller.signUpFormValidation();
                      controller.isLoading ? null : controller.signUp();
                    },
                    buttonText: JText.createAccount,
                    child: controller.isLoading ? JProgressIndicator() : null,
                  );
                }),
                24.verticalSpace,

                // divider
                AuthDivider(title: JText.signUpWith),
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
      ),
    );
  }
}
