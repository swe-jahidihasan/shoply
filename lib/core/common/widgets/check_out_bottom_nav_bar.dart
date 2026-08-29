import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/common/widgets/button/elevated_button.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/router/app_router.dart';

class JCheckOutBottomNavBar extends StatelessWidget {
  const JCheckOutBottomNavBar({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: JSizes.md.w,
          vertical: JSizes.md.h,
        ),
        child: JElevatedButton(
          onPressed: onPressed,
          buttonText: "Checkout \$866.6",
        ),
      ),
    );
  }
}
