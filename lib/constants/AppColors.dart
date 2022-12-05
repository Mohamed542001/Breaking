import 'dart:ui';
import 'package:flutter/material.dart';

class AppColors{
  static Color primary =  const Color(0xFFFFC107);
  static Color white=const Color(0xFFE1E8EB);
  static Color grey=const Color(0xFF343A40);
   
  static Color convertColor(String color){
    int hex = int.parse(color.replaceFirst("#", "0xff"));
    return Color(hex);
  }



}