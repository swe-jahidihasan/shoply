import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';

class VariationInfo extends StatelessWidget {
  const VariationInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Variation title
            Text(
              "${JText.variation}:",
              style: context.tt.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            12.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Price Row
                Text.rich(
                  TextSpan(
                    text: "${JText.price}: ",
                    style: context.tt.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: "\$699 ",
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      TextSpan(
                        text: "\$599",
                        style: context.tt.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),

                4.verticalSpace,

                // Stock Row
                Text.rich(
                  TextSpan(
                    text: "${JText.stock}: ",
                    style: context.tt.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: "In Stock",
                        style: context.tt.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          "This is a product of iPhone 11 with 512 GB",
          style: context.tt.labelLarge,
        ),
      ],
    );
  }
}
