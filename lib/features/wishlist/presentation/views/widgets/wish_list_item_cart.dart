import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/router/app_router.dart';
import 'package:shoply/features/wishlist/presentation/manager/controller/wishlist_controller.dart';

class WishListItemCart extends StatelessWidget {
  const WishListItemCart({
    super.key,
    required this.controller,
  });

  final WishlistController controller;

  @override
  Widget build(BuildContext context) {
    final double cardWidth = (1.sw - 48.w) / 2;
    return Wrap(
      spacing: 16.w,
      runSpacing: 16.h,
      children: List.generate(
        controller.popularCardItem.length,
            (index) {
          final item = controller.popularCardItem[index];
          return SizedBox(
            width: cardWidth,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(JSizes.borderRadiusXLg.r),
              child: Container(
                color: const Color(0xFFE7EFF6),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(JSizes.sm.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 120.h,
                            width: double.infinity,
                            padding: EdgeInsets.all(JSizes.sm.r),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                JSizes.borderRadiusXLg.r,
                              ),
                              color: JColors.white,
                            ),
                            child: Stack(
                              children: [
                                Center(
                                  child: Image.asset(
                                    item["image"] ?? "",
                                    fit: BoxFit.contain,
                                  ),
                                ),
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
                                        "${item["discount"]}%",
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
                            item["name"] ?? "",
                            style: context.tt.titleLarge,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          2.verticalSpace,
                          Row(
                            children: [
                              Text(item["brand"] ?? "", style: context.tt.labelLarge),
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
                              Text(
                                "\$${item["priceMin"]}",
                                style: context.tt.titleLarge,
                              ),
                              5.horizontalSpace,
                              Text(
                                "\$${item["priceMax"]}",
                                style: context.tt.titleMedium?.copyWith(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          // Add Button
                          12.verticalSpace,
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          AppRouter.pushNamed("product-details");
                        },
                        child: Container(
                          height: 32.h,
                          width: 38.w,
                          decoration: BoxDecoration(
                            color: JColors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(JSizes.borderRadiusLg.r),
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
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
