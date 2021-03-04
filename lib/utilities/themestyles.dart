import 'package:banking_app_ui/utilities/themecolor.dart';
import 'package:flutter/material.dart';

class ThemeStyles {
  static TextStyle primaryTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: ThemeColors.black,
  );
  static TextStyle seeAll = TextStyle(
    fontSize: 17,
    color: ThemeColors.black,
  );
  static TextStyle cardDetails = TextStyle(
    fontSize: 17,
    color: Color(0xff66646d),
    fontWeight: FontWeight.w600,
  );
  static TextStyle cardMoney = TextStyle(
    fontSize: 17,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
  static TextStyle tagText = TextStyle(
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w500,
    color: ThemeColors.black,
  );
  static TextStyle otherDetailsPrimary = TextStyle(
    fontSize: 16,
    color: ThemeColors.black,
  );
  static TextStyle otherDetailsSecondary = TextStyle(
    fontSize: 12,
    color: Colors.grey,
  );
}