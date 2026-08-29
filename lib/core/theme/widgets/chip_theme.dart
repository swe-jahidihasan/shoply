import 'package:flutter/material.dart';
import 'package:shoply/core/constants/colors.dart';


class JChipTheme{

  // private constructor
  JChipTheme._();


  /// ======== light theme ===========///

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: JColors.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: JColors.black),
    selectedColor: JColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: JColors.white,
  );


  /// ======== dark theme ===========///

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: JColors.darkerGrey,
    labelStyle: TextStyle(color: JColors.white),
    selectedColor: JColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: JColors.white,
  );
}