import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';
import 'package:shoply/core/helpers/extensions.dart';

class ProfileRowSection extends StatelessWidget {
  const ProfileRowSection({
    super.key,
    required this.onTap,
    required this.title,
    required this.value,
    required this.icon,
  });

  final VoidCallback onTap;
  final String title;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              title,
              style: context.tt.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: JColors.darkGrey,
              ),
            ),
          ),
          Expanded(flex: 5, child: Text(value, style: context.tt.bodyLarge)),
          Icon(icon, size: JSizes.iconSm.r),
        ],
      ),
    );
  }
}
