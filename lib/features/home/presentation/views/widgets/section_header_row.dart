import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';

class SectionHeaderRow extends StatelessWidget {
  const SectionHeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(JText.popularCategories, style: context.tt.titleLarge),
        Text(
          JText.viewAll,
          style: context.tt.bodyLarge?.copyWith(color: JColors.primary,decoration: TextDecoration.underline),
        ),
      ],
    );
  }
}
