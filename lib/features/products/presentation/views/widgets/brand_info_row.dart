import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';

class BrandInfoRow extends StatelessWidget {
  const BrandInfoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          JText.bata,
          style: context.tt.labelLarge?.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        5.horizontalSpace,
        Text(
          JText.bata,
          style: context.tt.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        5.horizontalSpace,
        Icon(
          Icons.check_circle,
          size: JSizes.iconSm.r,
          color: JColors.primary,
        ),
      ],
    );
  }
}
