import 'package:flutter/material.dart';

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
