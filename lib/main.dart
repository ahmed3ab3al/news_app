import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/features/home/presentation/views/home_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.white),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home:  const HomeScreenView(),
    );
  }
}
