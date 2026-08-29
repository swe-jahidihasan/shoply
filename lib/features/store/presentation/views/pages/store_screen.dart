import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoply/core/constants/app_assets.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/router/app_router.dart';
import 'package:shoply/features/store/presentation/manager/controller/store_controller.dart';
import 'package:shoply/features/store/presentation/views/widgets/horizontal_brand_list.dart';
import 'package:shoply/features/store/presentation/views/widgets/section_header.dart';
import 'package:shoply/features/store/presentation/views/widgets/store_app_bar.dart';
import 'package:shoply/features/store/presentation/views/widgets/store_brand_showcase.dart';
import 'package:shoply/features/store/presentation/views/widgets/tab_bar_delegate.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // GetX Controller Init
    Get.put(StoreController());

    final categories = const [
      "Sports",
      "Furniture",
      "Electronics",
      "Clothes",
      "Shoes",
      "Electronics",
      "Clothes",
      "Shoes",
    ];

    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const StoreAppBar(),

            SliverToBoxAdapter(
              child: SectionHeader(
                title: JText.brand,
                onViewAllTap: () => AppRouter.pushNamed("brand"),
              ),
            ),

            const HorizontalBrandList(),

            SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: SliverTabBarDelegate(
                TabBar(
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  padding: EdgeInsets.zero,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.blue,
                  tabs: categories.map((cat) => Tab(text: cat)).toList(),
                ),
              ),
            ),

            SliverPadding(
              padding: EdgeInsets.all(JSizes.md.r),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => const StoreBrandShowcase(
                    logo: JAppImages.bata,
                    title: "Bata",
                    productCount: "172 products",
                    images: [
                      JAppImages.shirt,
                      JAppImages.shirt,
                      JAppImages.shirt,
                    ],
                  ),
                  childCount: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
