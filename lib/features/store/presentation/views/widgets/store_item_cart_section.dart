import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/features/store/presentation/manager/controller/store_controller.dart';

class StoreItemCartSection extends StatelessWidget {
  const StoreItemCartSection({super.key, required this.controller});

  final StoreController controller;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: controller.popularCardItem.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 0.68,
      ),
      itemBuilder: (context, index) {
        final item = controller.popularCardItem[index];
        return BrandCartItems(
          image: item["image"] ?? "",
          discount: item["discount"].toString(),
          productName: item["productName"] ?? "",
          brand: item["brand"] ?? "",
          priceMin: item["priceMin"].toString(),
          priceMax: item["priceMax"].toString(),
        );
      },
    );
  }
}

class BrandCartItems extends StatelessWidget {
  const BrandCartItems({
    super.key,
    required this.image,
    required this.discount,
    required this.productName,
    required this.brand,
    required this.priceMin,
    required this.priceMax,
  });

  final String image;
  final String discount;
  final String productName;
  final String brand;
  final String priceMin;
  final String priceMax;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(JSizes.sm.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(JSizes.borderRadiusXLg.r),
            color: const Color(0xFFE7EFF6),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120.h,
                width: double.infinity,
                padding: EdgeInsets.all(JSizes.sm.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(JSizes.borderRadiusXLg.r),
                  color: JColors.white,
                ),
                child: Stack(
                  children: [
                    Center(child: Image.asset(image, fit: BoxFit.contain)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 6.w,
                            vertical: 2.h,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              JSizes.borderRadiusSm.r,
                            ),
                            color: JColors.yellow,
                          ),
                          child: Text(
                            "$discount%",
                            style: context.tt.labelLarge,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 14.r,
                            backgroundColor: const Color(0xFFE7EFF6),
                            child: Icon(
                              CupertinoIcons.heart,
                              size: JSizes.iconSm.r,
                              color: JColors.darkGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              8.verticalSpace,
              Text(
                productName,
                style: context.tt.titleLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              2.verticalSpace,
              Row(
                children: [
                  Text(brand, style: context.tt.labelLarge),
                  4.horizontalSpace,
                  Icon(
                    Icons.check_circle,
                    size: JSizes.iconSm.r,
                    color: JColors.primary,
                  ),
                ],
              ),
              6.verticalSpace,
              Row(
                children: [
                  Text("\$$priceMin", style: context.tt.titleLarge),
                  5.horizontalSpace,
                  Text(
                    "\$$priceMax",
                    style: context.tt.titleMedium?.copyWith(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 30.h,
              width: 38.w,
              decoration: BoxDecoration(
                color: JColors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(JSizes.borderRadiusLg.r),
                  bottomRight: Radius.circular(JSizes.borderRadiusXLg.r),
                ),
              ),
              child: Icon(
                Icons.add,
                size: JSizes.iconMd.r,
                color: JColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
