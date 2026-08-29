import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extensions.dart';

class OrderSummerRow extends StatelessWidget {
  const OrderSummerRow({
    super.key,
    required this.title,
    required this.value,
    this.isTotal = false,
  });

  final String title;
  final String value;
  final bool isTotal;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isTotal
            ? Text(title, style: context.tt.titleLarge)
            : Text(title, style: context.tt.bodyLarge),
        isTotal
            ? Text("\$$value", style: context.tt.titleLarge)
            : Text("\$$value", style: context.tt.bodyMedium),
      ],
    );
  }
}
