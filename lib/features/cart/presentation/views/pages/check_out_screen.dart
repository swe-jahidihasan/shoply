import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/common/widgets/appbar/app_bar.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/common/widgets/check_out_bottom_nav_bar.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/router/app_router.dart';
import 'package:shoply/features/cart/presentation/views/widgets/check_out_items_list.dart';
import 'package:shoply/features/cart/presentation/views/widgets/order_summery_card.dart';
import 'package:shoply/features/cart/presentation/views/widgets/promo_code_field.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //appbar
      appBar: JAppBar(title: JText.orderReview),

      //BODY
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: JSizes.md.w,
            vertical: JSizes.md.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // oder items list
              CheckOutItemsList(),
              16.verticalSpace,

              // promo code filed
              PromoCodeField(),
              16.verticalSpace,

              // order summery card
              OrderSummeryCard(),
            ],
          ),
        ),
      ),

      // todo: check out
      bottomNavigationBar: JCheckOutBottomNavBar(onPressed: (){
        AppRouter.pushNamed("payment-success");
      },),
    );
  }
}





