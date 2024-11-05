import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../core/constants/styles.dart';
import 'colors.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
    fontFamily: fontName,
    colorScheme: ColorScheme.light(
      surface: ColorsConst.white,
      primary: ColorsConst.primaryColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsConst.primaryColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.all<Color>(ColorsConst.highlightColor),
        foregroundColor: WidgetStateProperty.all<Color>(ColorsConst.white),
        padding: WidgetStateProperty.all<EdgeInsets>(buttonSpacing),
        textStyle: WidgetStateProperty.all<TextStyle>(
          const TextStyle(fontSize: 16),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadiusButton),
          ),
        ),
      ),
    ),
  );

  ThemeData darkTheme = ThemeData(
    fontFamily: fontName,
    colorScheme: ColorScheme.dark(
      surface: ColorsConst.black,
      primary: ColorsConst.primaryColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsConst.primaryColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.all<Color>(ColorsConst.highlightColor),
        foregroundColor: WidgetStateProperty.all<Color>(ColorsConst.white),
        padding: WidgetStateProperty.all<EdgeInsets>(buttonSpacing),
        textStyle: WidgetStateProperty.all<TextStyle>(
          const TextStyle(fontSize: 16),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadiusButton),
          ),
        ),
      ),
    ),
  );
}
