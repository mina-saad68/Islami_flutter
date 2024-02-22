import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/homeScreen.dart';
import 'package:islami/home/quran/quran_screen.dart';
import 'package:islami/home/quran/sura_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            color: Colors.black,
            size: 30,
          ),
          selectedItemColor: Colors.black,
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          unselectedItemColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFFB7935F),
          primary: Color(0xFFB7935F),
        ),


      ),

      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        QuranScreen.routeName: (context) => QuranScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
      },
    );
  }
}
