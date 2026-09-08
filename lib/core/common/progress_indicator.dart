import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';

class JProgressIndicator extends StatelessWidget {
  const JProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      width: 20.w,
      child: CircularProgressIndicator(
        strokeWidth: 2.r,
        color: JColors.white,
      ),
    );
  }
}