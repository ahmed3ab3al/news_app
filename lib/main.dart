import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/layout/news_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarThemeData(
          titleTextStyle: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: Colors.deepOrange,
        ),
      ),
      home: NewsLayout(),
    );
  }
}





































/*


class EndPoints {
  static const String baseUrl = 'https://newsapi.org/';
  static const String topHeadlines = 'v2/top-headlines';
  static const String search = 'v2/everything';
 /*
 * static const String apiKey = '3c88955c487e4d9db668f011dd85e737';*/
static const String apiKey = 'a68f68c6ba484697a189d0ff16567d67';
}

class ApiKeys {
  static const String message = 'message';
  static const String status = 'statusCode';
  static const String errMessage = 'error';
  static const String countryKey = 'country';
  static const String categoryKey = 'category';
  static const String apiKey = 'apiKey';
  static const String business = 'business';
  static const String sports = 'sports';
  static const String science = 'science';
  static const String settings = 'settings';
  static const String searchKey ='q';
  static const String language = 'language';
}


*/ 