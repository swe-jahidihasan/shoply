import 'package:flutter/material.dart';
import 'package:shoply/core/constants/colors.dart';

class JDivider extends StatelessWidget {
  const JDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: JColors.grey,
      thickness: 1,
      indent: 20,
      endIndent: 20,
    );
  }
}
