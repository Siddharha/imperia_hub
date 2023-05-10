import 'package:flutter/material.dart';

import 'color_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
      brightness: Brightness.light,
      //backgroundColor: ColorManager.backColor,
      cardColor: ColorManager.cardBack,
      chipTheme: ChipThemeData(
          labelStyle: TextStyle(color: ColorManager.normalTextColor)),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: ColorManager.buttonTextColor1));
}

ThemeData getAppDarkTheme() {
  return ThemeData(
      brightness: Brightness.dark,
      // backgroundColor: ColorManager.backColor,
      cardColor: ColorManager.cardBack,
      chipTheme: ChipThemeData(
          labelStyle: TextStyle(color: ColorManager.normalTextColor)),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: ColorManager.buttonTextColor1));
}
