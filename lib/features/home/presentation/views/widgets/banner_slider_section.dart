import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/features/home/presentation/manager/controller/home_controller.dart';

class BannerSliderSection extends StatelessWidget {
  const BannerSliderSection({super.key, required this.controller});

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5,
      child: PageView.builder(
        controller: controller.pageCtr,
        itemCount: controller.banner.length,
        onPageChanged: (index) {
          controller.updatePageIndicator(index);
        },
        itemBuilder: (context, index) {
          final item = controller.banner[index];
          return Container(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.symmetric(horizontal: JSizes.xs.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(JSizes.borderRadiusLg.r),
            ),
            child: Image.asset(
              item,
              fit: BoxFit.fill,
            ),
          );
        },
      ),
    );
  }
}