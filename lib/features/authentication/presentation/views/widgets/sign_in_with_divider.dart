import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/common/widgets/divider.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/constants/colors.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({
    super.key, required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: JDivider()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Text(title, style: context.tt.labelLarge?.copyWith(color: JColors.darkGrey)),
        ),
        Expanded(child: JDivider()),
        16.verticalSpace,
      ],
    );
  }
}
