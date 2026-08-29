import 'package:flutter/material.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/features/cart/presentation/views/widgets/check_out_order_item.dart';

class CheckOutItemsList extends StatelessWidget {
  const CheckOutItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return CheckOutOrderItem(
          image: JAppImages.phone,
          brand: "Apple",
          productName: "iPhone 15pro",
          color: "Green",
          size: 32.toString(),
        );
      },
    );
  }
}
