import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';



class JTextTheme {
  // private constructor
  JTextTheme._();

  // --- LIGHT TEXT THEME ---
  static TextTheme lightTextTheme(BuildContext context) => TextTheme(
    headlineLarge: TextStyle(fontSize: 32.spMin, fontWeight: FontWeight.w900, color: JColors.textDark),
    headlineMedium: TextStyle(fontSize: 24.spMin, fontWeight: FontWeight.w600, color: JColors.textDark),
    headlineSmall: TextStyle(fontSize: 18.spMin, fontWeight: FontWeight.w600, color: JColors.textDark),

    titleLarge: TextStyle(fontSize: 16.spMin, fontWeight: FontWeight.w600, color: JColors.textDark),
    titleMedium: TextStyle(fontSize: 16.spMin, fontWeight: FontWeight.w500, color: JColors.textDark),
    titleSmall: TextStyle(fontSize: 16.spMin, fontWeight: FontWeight.w400, color: JColors.textDark),

    bodyLarge: TextStyle(fontSize: 14.spMin, fontWeight: FontWeight.w500, color: JColors.textDark),
    bodyMedium: TextStyle(fontSize: 14.spMin, fontWeight: FontWeight.normal, color: JColors.textDark),
    bodySmall: TextStyle(fontSize: 14.spMin, fontWeight: FontWeight.w500, color: JColors.textDark.withValues(alpha: 0.7)),

    labelLarge: TextStyle(fontSize: 12.spMin, fontWeight: FontWeight.normal, color: JColors.textDark),
    labelMedium: TextStyle(fontSize: 12.spMin, fontWeight: FontWeight.normal, color: JColors.textDark.withValues(alpha: 0.5)),
  );

  // --- DARK TEXT THEME ---
  static TextTheme darkTextTheme(BuildContext context) => TextTheme(
    headlineLarge: TextStyle(fontSize: 32.spMin, fontWeight: FontWeight.bold, color: JColors.textWhite),
    headlineMedium: TextStyle(fontSize: 24.spMin, fontWeight: FontWeight.w600, color: JColors.textWhite),
    headlineSmall: TextStyle(fontSize: 18.spMin, fontWeight: FontWeight.w600, color: JColors.textWhite),

    titleLarge: TextStyle(fontSize: 16.spMin, fontWeight: FontWeight.w600, color: JColors.textWhite),
    titleMedium: TextStyle(fontSize: 16.spMin, fontWeight: FontWeight.w500, color: JColors.textWhite),
    titleSmall: TextStyle(fontSize: 16.spMin, fontWeight: FontWeight.w400, color: JColors.textWhite),

    bodyLarge: TextStyle(fontSize: 14.spMin, fontWeight: FontWeight.w500, color: JColors.textWhite),
    bodyMedium: TextStyle(fontSize: 14.spMin, fontWeight: FontWeight.normal, color: JColors.textWhite),
    bodySmall: TextStyle(fontSize: 14.spMin, fontWeight: FontWeight.w500, color: JColors.textWhite.withValues(alpha: 0.5)),

    labelLarge: TextStyle(fontSize: 12.spMin, fontWeight: FontWeight.normal, color: JColors.textWhite),
    labelMedium: TextStyle(fontSize: 12.spMin, fontWeight: FontWeight.normal, color: JColors.textWhite.withValues(alpha: 0.5)),
  );
}