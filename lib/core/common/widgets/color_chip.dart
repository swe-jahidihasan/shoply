import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/sizes.dart';

class JColorChoiceChip extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  const JColorChoiceChip({
    super.key,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 20.r,
        height: 20.r,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: isSelected
            ? Icon(Icons.check, color: Colors.white, size: JSizes.iconSm.r)
            : null,
      ),
    );
  }
}
