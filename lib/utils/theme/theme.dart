import 'package:bouncy_bargains/utils/theme/custom_themes/appbar_theme.dart';
import 'package:bouncy_bargains/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:bouncy_bargains/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:bouncy_bargains/utils/theme/custom_themes/chip_theme.dart';
import 'package:bouncy_bargains/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:bouncy_bargains/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:bouncy_bargains/utils/theme/custom_themes/text_field_theme.dart';
import 'package:bouncy_bargains/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class XAppTheme {
  XAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: "Poppins",
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: XTextTheme.lightTextTheme,
      elevatedButtonTheme: XElevatedButtonTheme.lightElevatedButtonTheme,
      appBarTheme: XAppBarTheme.lightAppBarTheme,
      checkboxTheme: XCheckBoxTheme.lightCheckBoxTheme,
      bottomSheetTheme: XBottomSheetTheme.lightBottomSheetTheme,
      chipTheme: XChipTheme.lightChipTheme,
      outlinedButtonTheme: XOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: XTextFormFieldTheme.lightInputDecorationTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: "Poppins",
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: XTextTheme.darkTextTheme,
      elevatedButtonTheme: XElevatedButtonTheme.darkElevatedButtonTheme,
      checkboxTheme: XCheckBoxTheme.darkCheckBoxTheme,
      appBarTheme: XAppBarTheme.darkAppBarTheme,
      bottomSheetTheme: XBottomSheetTheme.darkBottomSheetTheme,
      chipTheme: XChipTheme.darkChipTheme,
      outlinedButtonTheme: XOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: XTextFormFieldTheme.darkInputDecorationTheme);
}
