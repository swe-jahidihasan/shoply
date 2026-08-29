import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/common/widgets/appbar/app_bar.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/features/profile/presentation/views/widgets/ordre_status_cart.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //Appbar
      appBar: JAppBar(title: JText.myOrder),

      // BODY
      body: SafeArea(
        child: ListView.separated(
          padding: EdgeInsets.symmetric(
            horizontal: JSizes.md.w,
          ),
          separatorBuilder: (context, index) => 10.verticalSpace,
          itemCount: 8,
          itemBuilder: (context, index) {
            return OrderStatusCard(
              status: "Processing",
              statusDate: "01 Jan 2025",
              orderId: "GYS324",
              deliveryDate: "06 Jan 2025",
              onTap: () {},
            );
          },

        ),
      ),
    );
  }
}

