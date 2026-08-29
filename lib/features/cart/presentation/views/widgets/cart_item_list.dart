import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/features/cart/presentation/views/widgets/cart_container.dart';

class CartItemList extends StatelessWidget {
  const CartItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: false,
      physics: const ScrollPhysics(),
      padding: EdgeInsets.symmetric(
        horizontal: JSizes.md.w,
        vertical: JSizes.md.h,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return CartContainer(
          productName: "iPhone 11 64 GB",
          brand: "Apple",
          price: 399.toString(),
          image: JAppImages.phone,
          color: "Green",
          storage: 512.toString(),
        );
      },
    );
  }
}
