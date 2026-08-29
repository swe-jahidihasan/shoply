import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/helpers/extensions.dart';
import 'package:shoply/core/constants/colors.dart';

class JOutlineButton extends StatelessWidget {
  const JOutlineButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  final VoidCallback onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          backgroundColor: Colors.transparent,
          foregroundColor: JColors.black,

          side: BorderSide(width: 1.5,color: JColors.grey),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        onPressed: onPressed,
        child: Text(buttonText, style: context.tt.bodyLarge),
      ),
    );
  }
}
