import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoply/core/common/widgets/button/elevated_button.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/features/splash/presentation/manager/controller/splash_controller.dart';
import 'package:shoply/features/splash/presentation/views/widgets/skip_button.dart';
import 'package:shoply/features/splash/presentation/views/widgets/title_and_smooth_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SplashController());
    return Scaffold(
      //BODY
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [

              // skip button
              SkipButton(controller: controller),
              16.verticalSpace,

              // page
              Expanded(
                flex: 4,
                child: PageView(
                  controller: controller.pageController,
                  onPageChanged: controller.onPageChanged,
                  children: List.generate(controller.page.length, (index) {
                    return Image.asset(
                      controller.page[index],
                      fit: BoxFit.cover,
                    );
                  }),
                ),
              ),

              // title
              Expanded(
                flex: 2,
                child:TitleAndSmoothIndicator(controller: controller),
              ),

              // todo  next button
              Expanded(
                flex: 0,
                child: Obx(
                  () => JElevatedButton(
                    onPressed: controller.nextPage,
                    buttonText: controller.currentPage == 2
                        ? JText.getStarted
                        : JText.next,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
