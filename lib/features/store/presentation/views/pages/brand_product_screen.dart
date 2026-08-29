import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoply/core/common/widgets/appbar/app_bar.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/features/store/presentation/manager/controller/store_controller.dart';
import 'package:shoply/features/store/presentation/views/widgets/brand_cart.dart';
import 'package:shoply/features/store/presentation/views/widgets/brand_filter.dart';
import 'package:shoply/features/store/presentation/views/widgets/store_item_cart_section.dart';

class BrandProductScreen extends StatelessWidget {
  const BrandProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(StoreController());
    return Scaffold(

      // appbar
      appBar:JAppBar(title: JText.brand),

      // BODY
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: JSizes.md.w,
            vertical: JSizes.md.h,
          ),
          child: Column(
            children: [

              // brand card
              BrandCard(),
              16.verticalSpace,

              // brand filter section
              BrandFilterSection(),

              16.verticalSpace,
              StoreItemCartSection(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}



