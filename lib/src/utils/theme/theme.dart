import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:virtuetracker/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:virtuetracker/src/utils/theme/widget_themes/outlined_button_theme.dart';

class VirtueTheme {

  VirtueTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    /*textTheme: TextTheme(
      headline2: GoogleFonts.cormorant(
        color: Colors.black87,
      ),
      subtitle2:GoogleFonts.montserrat(
        color: Colors.black54,
        fontSize: 24,
      ),
    ),
     */
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    /*textTheme: TextTheme(
      headline2: GoogleFonts.cormorant(
        color: Colors.white70,
      ),
      titleSmall:GoogleFonts.montserrat(
        color: Colors.white60,
        fontSize: 24,
      ),
    ),
     */
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
  );
/*
    primarySwatch: MaterialColor(0xFFFFE200, <int, Color>{
      50 : Color(0x1AFFE200),
      100 : Color(0x33FFE200),
      200 : Color(0x4DFFE200),
      300 : Color(0x66FFE200),
      400 : Color(0x80FFE200),
      500 : Color(0xFFFFE200),
      600 : Color(0x99FFE200),
      700 : Color(0xB3FFE200),
      800 : Color(0xCCFFE200),
      900 : Color(0xE6FFE200),
    }),
     */
}