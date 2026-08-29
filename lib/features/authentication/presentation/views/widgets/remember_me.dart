import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/features/authentication/presentation/manager/controller/sign_in_controller.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({
    super.key,
    required this.controller,
  });

  final SignInController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Checkbox(
      value: controller.rememberMe,
      onChanged: (newValue) {
        controller.toggleCheckBox(true);
      },
    ),
        Text(
         JText.rememberMe,
          style: context.tt.labelLarge,
        ),
      ],
    );
  }
}


