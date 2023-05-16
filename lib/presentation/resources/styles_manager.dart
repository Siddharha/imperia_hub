import 'package:flutter/material.dart';
import 'package:imperia_hub/presentation/resources/color_manager.dart';

TextStyle _getTextStyle(double fontSize, Color color, FontWeight fontWeight) {
  return TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight);
}

ButtonStyle _getButtonStyle(
    MaterialStateProperty<Color> backColor, Color color) {
  return ButtonStyle(
      backgroundColor: backColor,
      foregroundColor: MaterialStateProperty.all<Color>(color),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side:
                  const BorderSide(color: Color.fromARGB(0, 255, 255, 255)))));
}

ButtonStyle getButtonStyleSocial(Color color, Color textColor) {
  return _getButtonStyle(MaterialStateProperty.all(color), textColor);
}

ButtonStyle getNormalButtonStyle() {
  return _getButtonStyle(
      MaterialStateProperty.all(ColorManager.baseColor), Colors.white);
}

TextStyle getLoginTitleStyle() {
  return _getTextStyle(20, ColorManager.normalTextColor, FontWeight.bold);
}
