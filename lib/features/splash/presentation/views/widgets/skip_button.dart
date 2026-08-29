import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/features/splash/presentation/manager/controller/splash_controller.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key, required this.controller});

  final SplashController controller;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Obx(() {
        return controller.currentPage == 2
            ? const SizedBox.shrink()
            : TextButton(
                onPressed: controller.skip,
                child: Text(JText.skip, style: context.tt.bodyLarge),
              );
      }),
    );
  }
}
