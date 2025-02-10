import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/theme/theme.dart';

class LightTheme extends BaseTheme
{
  @override

  Color get secondaryColor => Color(0XFF282A28); //grayish

  @override

  Color get backgroundColor => Color(0XFF121312); //black

  @override

  Color get primaryColor => Color(0XFFF6BD00); //yellow

  @override

  Color get textColor => Color(0XFFFFFFFF); //white

  @override

  ThemeData get themeData => ThemeData(
    primaryColor: primaryColor,
    canvasColor: backgroundColor,
    hintColor: textColor, //white
    indicatorColor: secondaryColor, //grayish
    textTheme: TextTheme(
      bodySmall: GoogleFonts.roboto(
        color: textColor,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      titleLarge: GoogleFonts.inter(
        color: textColor,
        fontSize: 36,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: GoogleFonts.inter(
        color: textColor,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      titleSmall:GoogleFonts.roboto(
        color: primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.roboto(
        color: secondaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    )
  );


}