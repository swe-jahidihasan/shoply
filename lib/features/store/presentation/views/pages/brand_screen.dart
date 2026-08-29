import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/common/widgets/appbar/app_bar.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/features/store/presentation/views/widgets/brand_item_list.dart';

class BrandScreen extends StatelessWidget {
  const BrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appbar
      appBar: JAppBar(title: JText.brand),

      // BODY
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: JSizes.md.w,
            vertical: JSizes.md.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // title
              Text(JText.brand, style: context.tt.titleLarge),
              16.verticalSpace,

              // brand list
              BrandItemList(),
            ],
          ),
        ),
      ),
    );
  }
}

