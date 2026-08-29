import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';

class JDivider extends StatelessWidget {
  const JDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1.w,
      color: JColors.grey,
    );
  }
}
