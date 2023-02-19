/*import 'package:flutter/material.dart';
import 'package:navigation/ui/styles/app_color.dart';

class AppTheme {

  static final ThemeData lightTheme = ThemeData.light().copyWith(

      // Color primario
      primaryColor: AppColorThemeLight.primaryColor,

      // AppBar Theme
      appBarTheme: const AppBarTheme(color: AppColorThemeLight.primaryColor, elevation: 0),

      // TextButton Theme
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: AppColorThemeLight.primaryColor)),

      // FloatingActionButtons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColorThemeLight.primaryColor, elevation: 5),

      // ElevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColorThemeLight.primaryColor,
            shape: const StadiumBorder(),
            elevation: 0),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: AppColorThemeLight.primaryColor),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColorThemeLight.primaryColor),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColorThemeLight.primaryColor),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(

      // Color primario
      primaryColor: AppColorThemeDark.pColor,

      // AppBar Theme
      appBarTheme: const AppBarTheme(color: AppColorThemeDark.pColor, elevation: 0),
      scaffoldBackgroundColor: Colors.black);

  static InputDecoration authInputDecoration(
      {required String hintText,
      required String labelText,
      IconData? prefixIcon,
      IconButton? suffixIcon}) {
    return InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColorThemeDark.pColor),
        ),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColorThemeDark.pColor, width: 2)),
        hintText: hintText,
        labelText: labelText,
        labelStyle: const TextStyle(color: AppColorThemeDark.pColor),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: AppColorThemeDark.pColor): null,
        suffixIcon: suffixIcon);
  }
}*/