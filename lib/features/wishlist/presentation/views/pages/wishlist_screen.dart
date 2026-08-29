import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoply/features/wishlist/presentation/manager/controller/wishlist_controller.dart';
import 'package:shoply/features/wishlist/presentation/views/widgets/wish_list_item_cart.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WishlistController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // wishlist item cart
            WishListItemCart(controller: controller),
          ],
        ),
      ),
    );
  }
}
