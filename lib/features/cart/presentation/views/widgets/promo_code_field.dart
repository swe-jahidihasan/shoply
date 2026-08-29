import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';

class PromoCodeField extends StatelessWidget {
  const PromoCodeField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: JText.promoCode,
        suffixIcon: Padding(
          padding: EdgeInsets.all(JSizes.xs.r),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: JSizes.md.w,
                vertical: JSizes.xs.h,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F2),
                borderRadius: BorderRadius.circular(JSizes.sm.r),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [Text(JText.apply, style: context.tt.labelLarge)],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
