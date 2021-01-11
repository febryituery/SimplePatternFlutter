import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

var green_bg = "#FBFFFD";
var green_divider = "#E4F0E9";
const hijau1 = "#16B95F";
var putih = "#FFFFFF";
var hitam1 = "#0A0A0B";
var abu1 = "#86929B";
var hitam2 = "#434345";
var abu2 = "#C0C8CE";
var abu3 = "#6E777E";
var greyBackground = "#E5E5E5";
var greenBackground = "#FBFFFD";
var abu4 = "#9B9B9D";
var abu5 = "#697784";
var greyIcon = "#697784";
var hitam3 = "#2D2D2E";
var redBold = "#FF4F4F";
var blueBold = "#007AFF";

var dividerGreen = "#E4F0E9";
var divider = "#EBF2F8";
var sore = "#FFC5B2";
var malam = "#123648";
var pagi = "#FFFFFF";
var green = "#16B95F";
var darkGreen = "#0D6D38";
var borderText = "#C0C8CE";
var titleSheet = "#434345";
var subtitleSheet = "#697784";