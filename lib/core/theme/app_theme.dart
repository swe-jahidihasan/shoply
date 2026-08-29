import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/theme/text_theme.dart';
import 'package:shoply/core/theme/widgets/appbar_theme.dart';
import 'package:shoply/core/theme/widgets/bottom_sheet_theme.dart';
import 'package:shoply/core/theme/widgets/checkbox_theme.dart';
import 'package:shoply/core/theme/widgets/chip_theme.dart';
import 'package:shoply/core/theme/widgets/elevated_button_theme.dart';
import 'package:shoply/core/theme/widgets/outline_button_theme.dart';
import 'package:shoply/core/theme/widgets/text_field_theme.dart';



/// Global App Theme Configuration Class
/// Manages Light and Dark themes with consistent Material 3 styling
class AppTheme {
  AppTheme._(); // Private constructor to prevent instantiation

  // =========================================================================
  // ☀️ Light Theme Configuration
  // =========================================================================
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily, // Global font family configuration
    brightness: Brightness.light,
    primaryColor: JColors.primary,
    disabledColor: JColors.grey,
    textTheme:  JTextTheme.lightTextTheme(context),
    chipTheme: JChipTheme.lightChipTheme,
    scaffoldBackgroundColor: JColors.light,
    appBarTheme: JAppBarTheme.lightAppBarTheme,
    checkboxTheme: JCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: JBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: JElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: JOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: JTextFormFieldTheme.lightInputDecorationTheme,
  );

  // =========================================================================
  // 🌙 Dark Theme Configuration
  // =========================================================================
  static ThemeData darkTheme(BuildContext context) => ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.inter().fontFamily, // Global font family configuration
    brightness: Brightness.dark,
    primaryColor: JColors.primary,
    disabledColor: JColors.grey,
    textTheme: JTextTheme.darkTextTheme(context),
    scaffoldBackgroundColor: JColors.black,
    appBarTheme: JAppBarTheme.darkAppBarTheme,
    checkboxTheme:JCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: JBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: JElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: JOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: JTextFormFieldTheme.darkInputDecorationTheme,
  );

  /// Returns theme mode based on system preferences
  static ThemeMode get systemThemeMode => ThemeMode.system;
}