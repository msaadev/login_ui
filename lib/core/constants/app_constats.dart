import 'package:flutter/material.dart';
class AppConstants {
  static const BACKGROUND_COLOR = Color(0xffFFFFFF);
  static const LOGIN_END = Color(0xFF4084ff);
  static const LOGIN_START = Color(0xFF4650fe);
  static const BUTTON = Color(0xff4469ff);



  static String? validator(String? value, {int len = 4, String message = '*'}) {
    if (value!.length < len) {
      return message;
    } else {
      return null;
    }
  }



}

