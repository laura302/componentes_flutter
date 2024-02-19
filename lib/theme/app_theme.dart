// Definicion de los temas de la App
import 'package:flutter/material.dart';

class AppTheme{
  //Constantes de color primario
  static const primaryColor = Color.fromARGB(223, 204, 36, 134);
  // Constante para color de fondo
  static const backColor = Color.fromARGB(68, 255, 72, 179);
  //Constante de tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(
    color: primaryColor,
    )
  );
}