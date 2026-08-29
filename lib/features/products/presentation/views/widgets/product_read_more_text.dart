import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';

class ProductReadMoreText extends StatelessWidget {
  const ProductReadMoreText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(JText.description, style: context.tt.titleLarge),
        10.verticalSpace,
        // read more text
        ReadMoreText(
          JText.readMoreText,
          trimMode: TrimMode.Line,
          trimLines: 2,
          trimCollapsedText: JText.showMore,
          trimExpandedText: JText.showLess,
          moreStyle: context.tt.labelLarge?.copyWith(
            color: JColors.black,
            fontWeight: FontWeight.bold,
          ),
          lessStyle: context.tt.labelLarge?.copyWith(
            color: JColors.redS,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
