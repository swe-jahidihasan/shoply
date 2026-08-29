import 'package:flutter/material.dart';
import 'package:shoply/core/common/widgets/appbar/app_bar.dart';
import 'package:shoply/core/common/widgets/check_out_bottom_nav_bar.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/router/app_router.dart';
import 'package:shoply/features/cart/presentation/views/widgets/cart_item_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appbar
      appBar: JAppBar(title: JText.cart),

      //body
      body: SafeArea(child: CartItemList()),

      // todo : check out button
      bottomNavigationBar: JCheckOutBottomNavBar(
        onPressed: () {
          AppRouter.pushNamed("check-out");
        },
      ),
    );
  }
}
