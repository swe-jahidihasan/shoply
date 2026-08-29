import 'package:flutter/material.dart';

// ============================================================================
// BUILD CONTEXT EXTENSION SHORTCUTS
// ============================================================================

extension JDeviceExtension on BuildContext {

  // ── THEME SHORTCUTS ──

  /// Get text theme styles
  TextTheme get tt => Theme.of(this).textTheme;

  /// Get color scheme colors
  ColorScheme get cs => Theme.of(this).colorScheme;

  /// Check if the current theme is dark mode
  bool get isDark => Theme.of(this).brightness == Brightness.dark;


  // ── MEDIA QUERY SHORTCUTS ──

  /// Get full MediaQueryData object
  MediaQueryData get mq => MediaQuery.of(this);

  /// Get full screen height
  double get screenHeight => MediaQuery.of(this).size.height;

  /// Get full screen width
  double get screenWidth => MediaQuery.of(this).size.width;

  /// Get current keyboard height on screen
  double get keyboardHeight => MediaQuery.of(this).viewInsets.bottom;


  // ── RESPONSIVE BREAKPOINTS SHORTCUTS ──

  /// Check if the device is a mobile phone (width less than 600)
  bool get isPhone => screenWidth < 600;

  /// Check if the device is a tablet (width between 600 and 899)
  bool get isTablet => screenWidth >= 600 && screenWidth < 900;

  /// Check if the device is a desktop screen (width 900 or more)
  bool get isDesktop => screenWidth >= 900;


  // ── ORIENTATION SHORTCUTS ──

  /// Check if screen is in portrait mode
  bool get isPortrait => MediaQuery.of(this).orientation == Orientation.portrait;

  /// Check if screen is in landscape mode
  bool get isLandscape => MediaQuery.of(this).orientation == Orientation.landscape;


  // ── ACTIONS SHORTCUTS ──

  /// Hide software keyboard from screen
  void hideKeyboard() {
    FocusScope.of(this).requestFocus(FocusNode());
  }
}