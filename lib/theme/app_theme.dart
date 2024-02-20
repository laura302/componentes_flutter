//Definicion de los temas de estilo de lapp
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //constante de color primario
  static const primaryColor = Color.fromARGB(246, 255, 255, 255);
  // Constante de color secundario
  static const secondaryColor = Color.fromARGB(245, 0, 0, 0);
  //constante de color de fondo
  static const backColor = Color.fromARGB(246, 252, 192, 230);
  //constante de temas
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(
      color: primaryColor,
    ),
    textTheme: TextTheme(
      //titulos muy grandes
      headlineLarge: GoogleFonts.abrilFatface(
        color: primaryColor,
        fontSize: 26.5,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: primaryColor,
        decorationStyle: TextDecorationStyle.dotted,
        decorationThickness: 2.0,
      ),
      //Estilo para texto muy pequeño
      bodySmall: GoogleFonts.alexandria(
        color: secondaryColor,
        fontSize: 15.2,
      ),
    ),
  );
}
