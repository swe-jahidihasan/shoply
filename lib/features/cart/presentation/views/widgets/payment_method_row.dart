import 'package:flutter/material.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/texts.dart';
import 'package:shoply/core/helpers/extensions.dart';

class PaymentMethodRow extends StatelessWidget {
  const PaymentMethodRow({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: context.tt.headlineMedium),
        GestureDetector(
          onTap: onTap,
          child: Text(
            JText.change,
            style: context.tt.labelLarge?.copyWith(color: JColors.primary),
          ),
        ),
      ],
    );
  }
}
