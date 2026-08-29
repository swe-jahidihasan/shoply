import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/features/home/presentation/manager/controller/home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerPageIndicator extends StatelessWidget {
  const BannerPageIndicator({super.key, required this.controller});

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller.pageCtr,
      count: 3,
      effect: ExpandingDotsEffect(
        dotWidth: 10.w,
        dotHeight: 5.h,
        dotColor: JColors.primary,
      ),
    );
  }
}
