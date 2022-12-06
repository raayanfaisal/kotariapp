import 'package:flutter/material.dart';
import 'package:joali_booking_app/common/colors.dart';

const screenPadding = EdgeInsets.fromLTRB(40.0, 60.0, 40.0, 60.0);

const gapBetweenHeading = SizedBox(
  height: 40.0,
);

const verticalGapBetweenFormFields = SizedBox(
  height: 20.0,
);

const verticalGapBetweenWidgets = SizedBox(
  height: 30.0,
);

linkStyle(double fontSize) {
  return TextStyle(
    color: primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: fontSize,
  );
}

showVisibilityIcon(bool visibility) {
  return Icon(
    !visibility ? Icons.visibility_off_outlined : Icons.visibility_outlined,
    color: Colors.grey,
  );
}
