import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/features/home/presentation/manager/controller/home_controller.dart';
import 'package:shoply/features/home/presentation/views/widgets/background_shapes_bottom.dart';
import 'package:shoply/features/home/presentation/views/widgets/background_shapes_top.dart';
import 'package:shoply/features/home/presentation/views/widgets/home_top_bar_bg.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({super.key, required this.controller});

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Stack(
            clipBehavior: Clip.none,
            children: [

              // Top Bar Background
              const Positioned.fill(
                child: HomeTopBarBg(),
              ),

              // Background Shapes top right
              Positioned(
                right: 0,
                top: 0,
                child: BackgroundShapesTop(),
              ),
              // Background Shapes bottom right
              Positioned(
                right: 0,
                bottom: 0,
                child: BackgroundShapesBottom(),
              ),

              // Topbar  Content
              Padding(
                padding: EdgeInsets.only(
                  top: 20.h,
                  left: 20.w,
                  right: 20.w,
                  bottom: 20.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      JText.goodMorning,
                      style: context.tt.labelLarge?.copyWith(color: JColors.white),
                    ),
                    2.verticalSpace,
                    Text(
                      "Unknown Pro",
                      style: context.tt.titleLarge?.copyWith(color: JColors.white),
                    ),
                    16.verticalSpace,
                    Text(
                      JText.popularCategories,
                      style: context.tt.titleLarge?.copyWith(color: JColors.white),
                    ),
                    10.verticalSpace,

                    SizedBox(
                      height: 90.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.popularCategories.length,
                        itemBuilder: (context, index) {
                          final item = controller.popularCategories[index];
                          return Padding(
                            padding: EdgeInsets.only(right: JSizes.sm.w),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 28.r,
                                  child: Image.asset(
                                    item["image"],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                5.verticalSpace,
                                Text(
                                  item["title"],
                                  style: context.tt.labelLarge?.copyWith(
                                    color: JColors.white,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              // Search TextField
              Positioned(
                left: 20.w,
                right: 20.w,
                bottom: -20.h,
                child: PhysicalModel(
                  color: Colors.white,
                  elevation: 4,
                  borderRadius: BorderRadius.circular(JSizes.borderRadiusLg.r),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: JText.searchIn,
                      prefixIcon: Icon(Icons.search, size: JSizes.iconSm.r),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: JSizes.borderRadiusXLg.w,
                        vertical: JSizes.borderRadiusLg.h,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



