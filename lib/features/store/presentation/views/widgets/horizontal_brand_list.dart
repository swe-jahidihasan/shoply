import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/features/store/presentation/views/widgets/store_brand_cart.dart';

class HorizontalBrandList extends StatelessWidget {
  const HorizontalBrandList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(
          left: JSizes.md.w,
          right: JSizes.md.w,
          bottom: JSizes.md.h,
        ),
        child: SizedBox(
          height: 50.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            separatorBuilder: (_, __) => 10.horizontalSpace,
            itemBuilder: (context, index) {
              return const StoreBrandCard(
                logo: JAppImages.nikeLogo,
                title: "Bata",
                productCount: "172 products",
              );
            },
          ),
        ),
      ),
    );
  }
}
