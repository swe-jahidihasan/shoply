import 'package:flutter/material.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/constants/sizes.dart';




class JAppBarTheme{
  JAppBarTheme._();


  /// ======== light theme ===========///
  static final lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: JColors.black, size: JSizes.iconMd),
    actionsIconTheme: IconThemeData(color: JColors.black, size: JSizes.iconMd),
    titleTextStyle: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: JColors.black),
  );


  /// ======== light theme ===========///
  static final darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: JColors.white, size: JSizes.iconMd),
    actionsIconTheme: IconThemeData(color: JColors.white, size: JSizes.iconMd),
    titleTextStyle: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: JColors.white),
  );
}