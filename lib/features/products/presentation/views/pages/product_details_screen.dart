import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoply/core/common/widgets/button/elevated_button.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/features/products/presentation/manager/controller/products_controller.dart';
import 'package:shoply/features/products/presentation/views/widgets/add_to_cart_bottom_nav.dart';
import 'package:shoply/features/products/presentation/views/widgets/brand_info_row.dart';
import 'package:shoply/features/products/presentation/views/widgets/price_and_share_section.dart';
import 'package:shoply/features/products/presentation/views/widgets/product_app_bar.dart';
import 'package:shoply/features/products/presentation/views/widgets/product_banner_image.dart';
import 'package:shoply/features/products/presentation/views/widgets/product_read_more_text.dart';
import 'package:shoply/features/products/presentation/views/widgets/product_selection_area.dart';
import 'package:shoply/features/products/presentation/views/widgets/stock_status_row.dart';
import 'package:shoply/features/products/presentation/views/widgets/variation_info.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductsController());
    return Scaffold(
      // app bar
      appBar: ProductAppBar(),

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
              // product banner image
              const ProductBannerImage(),
              24.verticalSpace,

              // price and share
              const PriceAndShareSection(),
              10.verticalSpace,

              Text("Blue Shoes of Nike ", style: context.tt.titleLarge),
              10.verticalSpace,

              // status row
              const StockStatusRow(),
              10.verticalSpace,

              // brand info row
              const BrandInfoRow(),
              16.verticalSpace,

              // variation info
              const VariationInfo(),
              10.verticalSpace,

              ProductSelectionArea(controller: controller),
              16.verticalSpace,

              //todo : checkout button
              JElevatedButton(
                onPressed: () {
                  controller.toggleCheckout();
                },
                buttonText: JText.checkout,
              ),
              16.verticalSpace,

              // read more text
              const ProductReadMoreText(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AddToCartBottomNavBar(),
    );
  }
}
