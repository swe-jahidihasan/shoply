import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/constants/colors.dart';

class JElevatedButton extends StatelessWidget {
  const JElevatedButton({
    super.key,
    required this.onPressed,
    this.child,
    required this.buttonText,
    this.bgColor,
  });

  final String buttonText;
  final Widget? child;
  final VoidCallback onPressed;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          backgroundColor: bgColor,
        ),
        onPressed: onPressed,
        child:
            child ??
            Text(
              buttonText,
              style: context.tt.bodyLarge?.copyWith(
                color: JColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
    );
  }
}
