import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/common/widgets/button/outline_button.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/router/app_router.dart';
import 'package:shoply/features/profile/presentation/views/widgets/custom_header_clipper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // dummy data
    final List<Map<String, dynamic>> profileItem = [
      {
        "title": "My Addresses",
        "subtitle": "Set shopping delivery addresses",
        "icon": CupertinoIcons.home,
        "onTap": () {
          AppRouter.pushNamed("profile-address");
        },
      },
      {
        "title": "My Cart",
        "subtitle": "Add, remove products and move to checkout",
        "icon": CupertinoIcons.cart,
        "onTap": () {},
      },
      {
        "title": "My Orders",
        "subtitle": "In-progress and Completed Orders",
        "icon": CupertinoIcons.cube_box,
        "onTap": () {
          AppRouter.pushNamed("my-order");
        },
      },
    ];

    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [

              // header
              ClipPath(
                clipper: CustomHeaderClipper(),
                child: Container(
                  height: 140.h,
                  width: double.infinity,
                  color: const Color(0xFF0857A0),
                ),
              ),

              // image
              Positioned(
                bottom: -45.h,
                child: Container(
                  padding: EdgeInsets.all(4.r),
                  decoration: const BoxDecoration(
                    color: Color(0xFF0857A0),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 45.r,
                    backgroundColor: Colors.white,
                    backgroundImage: const AssetImage(
                      "assets/images/rb_176144 1.png",
                    ),
                  ),
                ),
              ),
            ],
          ),

          55.verticalSpace,
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: JSizes.md.w,
                vertical: JSizes.md.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Unknown Pro", style: context.tt.titleLarge),
                          Text(
                            "unknown@gmail.com",
                            style: context.tt.labelLarge,
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          AppRouter.pushNamed("edit-profile");
                        },
                        child: Icon(
                          CupertinoIcons.square_pencil,
                          size: JSizes.iconMd.r,
                        ),
                      ),
                    ],
                  ),
                  16.verticalSpace,
                  Text(JText.accountSetting, style: context.tt.headlineMedium),
                  16.verticalSpace,

                  // profile item
                  ...profileItem.map(
                    (item) => ListTile(
                      onTap: item["onTap"],
                      leading: Icon(item["icon"], size: JSizes.iconMd.r),
                      title: Text(item["title"], style: context.tt.titleLarge),
                      subtitle: Text(
                        item["subtitle"],
                        style: context.tt.labelLarge,
                      ),
                    ),
                  ),
                  16.verticalSpace,
                  JOutlineButton(onPressed: () {}, buttonText: "Logout"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

