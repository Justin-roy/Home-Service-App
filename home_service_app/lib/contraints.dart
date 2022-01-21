import 'package:flutter/material.dart';

class CustomTextStyle {
  CustomTextStyle(
    this.color,
    this.fontSize,
    this.fontWeight,
  );
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  cTextStyle() {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}
