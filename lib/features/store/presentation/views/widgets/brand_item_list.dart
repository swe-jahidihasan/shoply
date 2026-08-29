import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/core/router/app_router.dart';
import 'package:shoply/features/store/presentation/views/widgets/brand_container.dart';

class BrandItemList extends StatelessWidget {
  const BrandItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 50.h,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            AppRouter.pushNamed("brand-products");
          },
          child: BrandContainer(
            brandLogo: JAppImages.nikeLogo,
            brandName: "Bata",
            productCount: "172 products",
          ),
        );
      },
    );
  }
}
