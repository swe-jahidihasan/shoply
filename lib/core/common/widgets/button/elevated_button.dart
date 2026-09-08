import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/constants/colors.dart';

class JElevatedButton extends StatelessWidget {
  const JElevatedButton({
    super.key,
    required this.onPressed,
    required this.buttonText, this.child,
  });


  final VoidCallback? onPressed;
  final String buttonText;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: JColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        onPressed: onPressed,
        child: child ?? Text(buttonText, style: TextStyle(fontSize: 16.spMin)),
      ),
    );
  }
}