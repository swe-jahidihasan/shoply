import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ============================================================================
// GLOBAL DEVICE HELPER CLASS
// ============================================================================

class JDeviceHelper {
  // PRIVATE CONSTRUCTOR TO PREVENT OBJECT INSTANTIATION
  JDeviceHelper._();

  /// Change the top status bar background color
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  /// Toggle immersive fullscreen mode (Hide/Show status bar and navigation bar)
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
      enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge,
    );
  }

  /// Get standard Flutter bottom navigation bar height (56.0 dp)
  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  /// Get standard Flutter app bar / toolbar height (56.0 dp)
  static double getAppBarHeight() {
    return kToolbarHeight;
  }
}