import 'package:flutter/material.dart';

class XColors {
  XColors._();

  // App Basic Colors
  static const Color primary = Color(0xFF4B68FF);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFB0C7FF);

  // Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  // Background Containers Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainers = XColors.textWhite.withOpacity(0.1);

  // Button Colors
  static const Color buttonPrimary = Color(0xFF4B68FF);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);
}
