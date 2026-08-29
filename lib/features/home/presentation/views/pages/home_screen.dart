import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoply/features/home/presentation/manager/controller/home_controller.dart';
import 'package:shoply/features/home/presentation/views/widgets/banner_page_indicator.dart';
import 'package:shoply/features/home/presentation/views/widgets/banner_slider_section.dart';
import 'package:shoply/features/home/presentation/views/widgets/header_section.dart';
import 'package:shoply/features/home/presentation/views/widgets/product_grid_section.dart';
import 'package:shoply/features/home/presentation/views/widgets/section_header_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header section
            HomeHeaderSection(controller: controller),
            35.verticalSpace,

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  // Banner Slider
                  BannerSliderSection(controller: controller),
                  10.verticalSpace,

                  // page indicator
                  BannerPageIndicator(controller: controller),
                  16.verticalSpace,

                  // section header row
                  const SectionHeaderRow(),

                  // GridView Items
                  ProductGridSection(controller: controller),
                ],
              ),
            ),
            20.verticalSpace,
          ],
        ),
      ),
    );
  }
}
