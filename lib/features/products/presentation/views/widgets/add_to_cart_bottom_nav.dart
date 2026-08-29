import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/router/app_router.dart';

class AddToCartBottomNavBar extends StatelessWidget {
  const AddToCartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // todo: add to cart
      child:  Container(
        height: 50.h,
        padding: EdgeInsets.symmetric(horizontal: JSizes.md.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(JSizes.borderRadiusLg.r),
            topRight: Radius.circular(JSizes.borderRadiusLg.r),
          ),
          color: Color(0xFFD9D9D9),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 15.r,
              backgroundColor: JColors.darkGrey,
              child: Icon(
                Icons.remove,
                size: JSizes.iconSm.r,
                color: JColors.white,
              ),
            ),
            5.horizontalSpace,
            Text("1", style: context.tt.bodyLarge),
            5.horizontalSpace,
            CircleAvatar(
              radius: 15.r,
              backgroundColor: JColors.black,
              child: Icon(Icons.add, size: JSizes.iconSm.r, color: JColors.white),
            ),
            const Spacer(),

            GestureDetector(
              onTap: (){
                // todo: add to cart
                AppRouter.pushNamed("cart");
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: JSizes.xs.w,
                  vertical: 10.h,
                ),
                decoration: BoxDecoration(
                  color: JColors.black,
                  borderRadius: BorderRadius.circular(JSizes.borderRadiusMd.r),
                ),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.lock,
                      size: JSizes.iconSm.r,
                      color: JColors.white,
                    ),
                    Text(
                     JText.addToCrt,
                      style: context.tt.labelLarge?.copyWith(color: JColors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
