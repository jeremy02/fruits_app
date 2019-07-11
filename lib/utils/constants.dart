import 'package:flutter/material.dart';
class Constants{
    
    static String appName = "Fruits Crunch";
    
    //Colors for theme
    static Color lightPrimary = Color(0xfffcfcff);
    static Color lightAccent = Colors.blueGrey[900];
    static Color darkAccent = Colors.white;
    static Color lightBG = Color(0xfffcfcff);
    static Color darkBG = Colors.black;
    
    static ThemeData lightTheme = ThemeData(
        backgroundColor: lightBG,
        primaryColor: lightPrimary,
        accentColor:  lightAccent,
        cursorColor: lightAccent,
        scaffoldBackgroundColor: lightBG,
        appBarTheme: AppBarTheme(
            elevation: 0,
            textTheme: TextTheme(
                title: TextStyle(
                    color: darkBG,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w800,
                ),
            ),
//      iconTheme: IconThemeData(
//        color: lightAccent,
//      ),
        ),
    );
    
}