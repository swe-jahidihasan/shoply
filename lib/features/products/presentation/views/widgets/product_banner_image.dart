import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/router/app_router.dart';

class ProductBannerImage extends StatelessWidget {
  const ProductBannerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        AppRouter.pushNamed("product-view");
      },
      child: Container(
        height: 160.h,
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(JSizes.borderRadiusMd.r),
        ),
        child: Image.asset(JAppImages.phone, fit: BoxFit.contain),
      ),
    );
  }
}
