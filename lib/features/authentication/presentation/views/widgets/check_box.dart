import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoply/core/common/widgets/check_box.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/features/authentication/presentation/manager/controller/sign_up_controller.dart';

class CheckBox extends StatelessWidget {
  const CheckBox({
    super.key,
    required this.controller,
  });

  final SignUpController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => JCheckbox(
        value: controller.rememberMe,
        onChanged: (value) {
          controller.toggleCheckBox(value ?? false);
        },
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: JText.iAgree,
                style: context.tt.labelLarge,
              ),
              TextSpan(
                text: JText.privacy,
                style: context.tt.bodyLarge?.copyWith(
                  color: JColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: JColors.primary,
                ),
              ),
              TextSpan(
                text: JText.and,
                style: context.tt.labelLarge,
              ),
              TextSpan(
                text: JText.terms,
                style: context.tt.bodyLarge?.copyWith(
                  color: JColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: JColors.primary,
                ),
              ),
            ],
          ),
          softWrap: true,
        ),
      ),
    );
  }
}