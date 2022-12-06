import 'package:flutter/material.dart';
import 'package:joali_booking_app/common/colors.dart';
import 'package:joali_booking_app/common/material_color_generator.dart';

final appTheme = ThemeData(
  primarySwatch: generateMaterialColor(primaryColor),
  scaffoldBackgroundColor: scaffoldBackgroundColor,
  textTheme: TextTheme(
    headline4: TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: headingColor,
    ),
  ),
);
