import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoply/core/common/widgets/check_box.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/router/app_router.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/features/authentication/presentation/manager/controller/sign_in_controller.dart';

class RememberAndForgotPass extends StatelessWidget {
  const RememberAndForgotPass({
    super.key,
    required this.controller,
  });

  final SignInController controller;

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          JCheckbox(
            value: controller.rememberMe,
            onChanged: (value) => controller.toggleCheckBox(value!),
            child: Text(JText.rememberMe, style: context.tt.labelLarge),
          ),
          GestureDetector(
            onTap: (){
              AppRouter.pushNamed("forgot-password");
            },
            child: Text(
              JText.forgotPass,
              style: context.tt.labelLarge?.copyWith(color: JColors.primary),
            ),
          ),
        ],
      );
    });
  }
}
