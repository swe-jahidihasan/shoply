import 'package:flutter/material.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';



class JOutlinedButtonTheme {
  JOutlinedButtonTheme._();


  /// ======== light theme ===========///


  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: JColors.dark,
      side: const BorderSide(color: JColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: JColors.black, fontWeight: FontWeight.w600),
      padding: EdgeInsets.symmetric(vertical: JSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(JSizes.buttonRadius)),
    ),
  );



  /// ======== dark theme ===========///

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: JColors.light,
      side: const BorderSide(color: JColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: JColors.textWhite, fontWeight: FontWeight.w600),
      padding: EdgeInsets.symmetric(vertical: JSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(JSizes.buttonRadius)),
    ),
  );


  // Theme-Aware Custom Modifications (Overriding Radius Dynamically)

  /// Returns the current global theme style with an overridden border radius of 12
  static ButtonStyle radius12(BuildContext context) {
    return Theme.of(context).outlinedButtonTheme.style!.copyWith(
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),        // Use: UOutlinedButtonTheme.radius12(context)
      ),
    );
  }

  /// Returns the current global theme style with an overridden border radius of 48
  static ButtonStyle radius48(BuildContext context) {
    return Theme.of(context).outlinedButtonTheme.style!.copyWith(
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(48)),        // Use : UOutlinedButtonTheme.radius48(context)
      ),
    );
  }
}