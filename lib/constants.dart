import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Color facebook_blue_color = Color(0xff1773E9);
Color facebook_grey_color = Color(0xffF0F2F5);
Color facebook_dgrey_color = Color(0xffAEB4BB);
Color facebook_icon_color = Color(0xff4B4C4F);
Color Inactive_facebook_color = Color(0xff4B4C4F);
Color Active_facebook_color = Color(0xffE7F3FF);

const Color kPrimaryColor = Color(0xFF20639B);
const Color kAccentColor = Color(0xFF4F9BDA);
const Color kTextColor = Color(0xFF606060);
const Color kGryColor = Color(0xFF898F9C);
const Color kBackgroundColor = Color(0xFF8E8E93);
const Color kCardColorDarkMode = Color(0xFF4E4848);
const Color kGreenColor = Color(0xFF4CB429);
const Color kBColor = Color(0xFF707070);
const Color kBlackColor = Color(0xFF191818);
const Color kRateColor = Color(0xFFF7C978);
TextStyle headStyle = GoogleFonts.roboto(
  textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 30,color: facebook_blue_color)
);


String? getOs()
{
  return Platform.operatingSystem;
}