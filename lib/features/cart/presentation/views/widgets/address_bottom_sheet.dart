import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/common/widgets/button/elevated_button.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/features/cart/presentation/views/widgets/address_container.dart';

class AddressBottomSheet extends StatelessWidget {
  const AddressBottomSheet({super.key});

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => const AddressBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {

    //dummy data
    final address = [
      {
        "HouseName": "UnknownPro",
        "phone": "+0138895414566",
        "address": "House No 256,Dhaka,Bangladesh",
      },
      {
        "HouseName": "UnknownPro",
        "phone": "+0138895414566",
        "address": "House No 256,Dhaka,Bangladesh",
      },
    ];
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: JSizes.md.w,
        vertical: JSizes.md.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(JSizes.borderRadiusMd.r),
          topLeft: Radius.circular(JSizes.borderRadiusMd.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(JText.selectAddress, style: context.tt.titleLarge),
          10.verticalSpace,

          // address list
          ...address.map(
            (item) => AddressContainer(
              houseName: item["HouseName"] ?? "",
              phone: item["phone"] ?? "",
              address: item["address"] ?? "",
            ),
          ),

          16.verticalSpace,
          JElevatedButton(onPressed: () {}, buttonText: "Add new address"),
          10.verticalSpace,
        ],
      ),
    );
  }
}

