import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarang_dating_app/src/theme_manager/color_manager.dart';
import 'package:sarang_dating_app/src/theme_manager/font_manager.dart';

//GET TEXTSTYLE
TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
  FontWeight fontWeight,
  Color color,
) {
  return GoogleFonts.poppins().copyWith(
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
  );
}

//WHITE TEXTSTYLE
TextStyle getWhiteTextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily,
    fontWeight,
    ColorManager.white,
  );
}

//BLACK60 TEXTSTYLE
TextStyle getBlack60TextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily,
    fontWeight,
    ColorManager.black60,
  );
}

//BLACK30 TEXTSTYLE
TextStyle getBlack30TextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily,
    fontWeight,
    ColorManager.black30,
  );
}

//BLACK TEXTSTYLE
TextStyle getBlackTextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily,
    fontWeight,
    ColorManager.black,
  );
}

//GREY60 TEXTSTYLE
TextStyle getGrey60TextStyle({
  double fontSize = FontSizeManager.f14,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(
    fontSize,
    FontFamilyConstant.fontFamily,
    fontWeight,
    ColorManager.grey60,
  );
}
