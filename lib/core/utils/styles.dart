import 'package:flutter/material.dart';
import 'package:news_app/core/utils/colors.dart';
abstract class Styles {

  static TextStyle appBar =  TextStyle(
    color: ColorManager.black,
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

  static IconThemeData searchIcon =   IconThemeData(
    color: ColorManager.black,
    size: 35,
  );

  static BottomNavigationBarThemeData bottomNavBar =   BottomNavigationBarThemeData(
    selectedItemColor: Colors.deepOrange,
    backgroundColor: ColorManager.white,
    elevation: 30,
    type: BottomNavigationBarType.fixed,

  );

}

