import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/common/divider.dart';
import 'package:shoply/core/common/widgets/appbar/app_bar.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/router/app_router.dart';
import 'package:shoply/features/profile/presentation/views/widgets/profile_row_section.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // account information
    final List<Map<String, dynamic>> accountItems = [
      {
        'title': JText.nameLabel,
        'value': 'Unknown pro',
        'icon': Icons.arrow_forward_ios_rounded,
        'onTap': () => AppRouter.pushNamed("profile-change-name"),
      },
      {
        'title': JText.userName,
        'value': 'Unknown pro',
        'icon': Icons.arrow_forward_ios_rounded,
        'onTap': () {},
      },
    ];

    // Personal Information
    final List<Map<String, dynamic>> personalItems = [
      {
        'title': JText.userID,
        'value': '2563',
        'icon': Icons.content_copy_rounded,
        'onTap': () {},
      },
      {
        'title': 'Email',
        'value': 'unknown@gmail.com',
        'icon': Icons.arrow_forward_ios_rounded,
        'onTap': () {},
      },
      {
        'title': 'Phone Number',
        'value': '+880131188522',
        'icon': Icons.arrow_forward_ios_rounded,
        'onTap': () {},
      },
      {
        'title': 'Gender',
        'value': 'Male',
        'icon': Icons.arrow_forward_ios_rounded,
        'onTap': () {},
      },
    ];

    return Scaffold(
      // appbar
      appBar: JAppBar(title: JText.editProfile),

      //BODY
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: JSizes.md.w,
            vertical: JSizes.md.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(JSizes.xs.r),
                      decoration: const BoxDecoration(
                        color: Color(0xFF0857A0),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        radius: 35.r,
                        backgroundColor: Colors.white,
                        backgroundImage: const AssetImage(
                          "assets/images/rb_176144 1.png",
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Icon(
                        CupertinoIcons.square_pencil,
                        size: JSizes.iconMd.r,
                      ),
                    ),
                  ],
                ),
              ),
              16.verticalSpace,
              JDivider(),
              10.verticalSpace,
              Text(JText.accountSetting, style: context.tt.titleLarge),
              10.verticalSpace,

              // account row section
              ...accountItems.map(
                (item) => ProfileRowSection(
                  onTap: item["onTap"],
                  title: item["title"],
                  value: item["value"],
                  icon: item["icon"],
                ),
              ),
              16.verticalSpace,

              // divider
              JDivider(),
              16.verticalSpace,

              // personal row section
              ...personalItems.map(
                (item) => ProfileRowSection(
                  onTap: item["onTap"],
                  title: item["title"],
                  value: item["value"],
                  icon: item["icon"],
                ),
              ),
              16.verticalSpace,

              // divider
              JDivider(),
              16.verticalSpace,

              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    JText.closeAccount,
                    style: context.tt.bodyLarge?.copyWith(
                      color: JColors.warning,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
