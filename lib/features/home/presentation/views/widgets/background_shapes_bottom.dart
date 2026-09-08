import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundShapesBottom extends StatelessWidget {
  const BackgroundShapesBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(100.r),
        topLeft: Radius.circular(100.r),
        bottomRight: Radius.circular(100.r),
      ),
      child: Container(
        height: 170.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: const Color(0xFF5285B4).withValues(alpha: 0.4),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(120.r),
            topLeft: Radius.circular(120.r),
          ),
        ),
      ),
    );
  }
}
