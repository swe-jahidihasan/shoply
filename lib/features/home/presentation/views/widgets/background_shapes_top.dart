import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundShapesTop extends StatelessWidget {
  const BackgroundShapesTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 120.w,
      decoration: BoxDecoration(
        color: const Color(0xFF5285B4).withValues(alpha: 0.4),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100.r),
        ),
      ),
    );
  }
}
