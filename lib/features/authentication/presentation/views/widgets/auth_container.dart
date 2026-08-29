import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';

class AuthContainer extends StatelessWidget {
  const AuthContainer({
    super.key,
    required this.onPressed,
    required this.image,
  });

  final VoidCallback onPressed;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 1.w, color: JColors.grey),
        ),
        child: Image.asset(image),
      ),
    );
  }
}
