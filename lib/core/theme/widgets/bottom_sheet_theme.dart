import 'package:flutter/material.dart';
import 'package:shoply/core/constants/colors.dart';


class JBottomSheetTheme {
  JBottomSheetTheme._();


  /// ======== light theme ===========///
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: JColors.white,
    modalBackgroundColor: JColors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );


  /// ======== dark theme ===========///
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: JColors.black,
    modalBackgroundColor: JColors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}