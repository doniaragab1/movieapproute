import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app_route/theme/theme.dart';

class LightTheme extends BaseTheme
{
  @override
  Color get primaryColor => const Color(0XFFF6BD00); //yellow

  @override
  Color get secondaryColor => const  Color(0XFF282A28); //grayish

  @override
  Color get backgroundColor => const Color(0XFF121312); //black

  @override
  Color get textColor => const Color(0XFFFFFFFF); //white

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
      bodyMedium: GoogleFonts.roboto(
        color: secondaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: GoogleFonts.inter(
        color: secondaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
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
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: primaryColor)
        ),
        minimumSize: const Size(double.infinity, 55),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(),
  );

}