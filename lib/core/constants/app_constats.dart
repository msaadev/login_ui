import 'package:flutter/material.dart';
class AppConstants {
  static const BACKGROUND_COLOR = Color(0xffF6F5F3);
  static const PRIMARY_COLOR = Color(0xFFf00000);
  static const DOVE_GRAY = Color(0xff706F6F);
  static const PAMPAS = Color(0xffF6F5F3);
  static const ALUMNINUM = Color(0xffA2A4AB);
  static const SAIL = Color(0xffA2E1F4);



  static String? validator(String? value, {int len = 4, String message = '*'}) {
    if (value!.length < len) {
      return message;
    } else {
      return null;
    }
  }



}

