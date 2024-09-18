import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news_app/core/utils/colors.dart';
abstract class Styles {

  static TextStyle appBarLight =  TextStyle(
    color: ColorManager.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle appBarDark =  TextStyle(
    color: ColorManager.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );


  static TextStyle title =  const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
  );

  static TextStyle date =  TextStyle(
      fontSize: 16,
      color: ColorManager.grey
  );

  static IconThemeData searchIconLight =   IconThemeData(
    color: ColorManager.black,
    size: 28,
  );
  static IconThemeData searchIconDark =   IconThemeData(
    color: ColorManager.white,
    size: 28,
  );

  static BottomNavigationBarThemeData bottomNavBarLight =   BottomNavigationBarThemeData(
    selectedItemColor: Colors.deepOrange,
    backgroundColor: ColorManager.white,
    elevation: 30,
    type: BottomNavigationBarType.fixed,

  );
  static BottomNavigationBarThemeData bottomNavBarDark =   BottomNavigationBarThemeData(
    selectedItemColor: Colors.deepOrange,
    backgroundColor:HexColor('333739'),
    elevation: 30,
    type: BottomNavigationBarType.fixed,
    unselectedItemColor: ColorManager.grey

  );

  static TextStyle bodyLight =  const TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.bold
  );
  static TextStyle bodyDark =  const TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold
  );

}

