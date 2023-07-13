import 'package:flutter/material.dart';
import 'colors.dart';

class TextStyles {
  static const kBoldTextStyle = TextStyle(fontWeight: FontWeight.bold);
  static const kWebViewTextStyle =
      TextStyle(color: Colors.blue, decoration: TextDecoration.underline);
  static const kIntroduceTitleTextStyle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: ColorStyles.kLightGrey);
  static const kQuestionTextStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  static const kMainTitleTextStyle = TextStyle(
      fontSize: 23, fontWeight: FontWeight.bold, color: ColorStyles.kLightGrey);
  static const kMainNormalTextStyle =
      TextStyle(fontSize: 15, color: ColorStyles.kLightGrey);
}
