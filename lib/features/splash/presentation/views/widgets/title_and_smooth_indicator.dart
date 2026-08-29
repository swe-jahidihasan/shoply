import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/features/splash/presentation/manager/controller/splash_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TitleAndSmoothIndicator extends StatelessWidget {
  const TitleAndSmoothIndicator({super.key, required this.controller});

  final SplashController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Text(
            controller.titleText,
            style: context.tt.headlineMedium,
            textAlign: TextAlign.center,
          ),
          10.verticalSpace,
          Text(
            controller.subTitleText,
            style: context.tt.bodyLarge,
            textAlign: TextAlign.center,
          ),

          24.verticalSpace,
          SmoothPageIndicator(
            controller: controller.pageController,
            count: 3,
            effect: ExpandingDotsEffect(
              dotColor: JColors.primary,
              dotHeight: 4.h,
              dotWidth: 10.w,
            ),
          ),
        ],
      ),
    );
  }
}
