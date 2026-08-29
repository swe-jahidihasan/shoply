import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/features/home/presentation/views/pages/home_screen.dart';
import 'package:shoply/features/main_bottom_nav/presentation/manager/controller/main_bottom_nav_controller.dart';
import 'package:shoply/features/profile/presentation/views/pages/profile_screen.dart';
import 'package:shoply/features/store/presentation/views/pages/store_screen.dart';
import 'package:shoply/features/wishlist/presentation/views/pages/wishlist_screen.dart';

class MainBottomNavScreen extends StatelessWidget {
  const MainBottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller initialize
    final controller = Get.put(MainBottomNavController());

    final List<Widget> pages = const [
      HomeScreen(),
      StoreScreen(),
      WishlistScreen(),
      ProfileScreen(),
    ];

    return GetBuilder<MainBottomNavController>(
      builder: (controller) {
        return Scaffold(
          body: pages[controller.selectedIndex],

          // BOTTOM NAV BAR
          bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: Color(0xFFF2F2F2),
              labelTextStyle: WidgetStateProperty.all(context.tt.labelLarge),
            ),
            child: NavigationBar(
              height: 70.h,
              backgroundColor: JColors.white,
              selectedIndex: controller.selectedIndex,
              onDestinationSelected: (int index) {
                controller.onTapPage(index);
              },
              destinations: [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home_outlined),
                  label: JText.home,
                ),
                NavigationDestination(
                  icon: Icon(Icons.storefront_outlined),
                  selectedIcon: Icon(Icons.storefront_outlined),
                  label: JText.store,
                ),
                NavigationDestination(
                  icon: Icon(Icons.favorite_border),
                  selectedIcon: Icon(Icons.favorite_border),
                  label: JText.wishList,
                ),
                NavigationDestination(
                  icon: Icon(Icons.person_outline),
                  selectedIcon: Icon(Icons.person_outline),
                  label: JText.profile,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
