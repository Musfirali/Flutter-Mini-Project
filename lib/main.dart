import 'package:flutter/material.dart';
import 'package:project/OnBoarding_Screens/slider.dart';

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
        fontFamily: "Manrope",
        textTheme:  const TextTheme(
          displayLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Color(0xFFFAFBFD)),
          headlineMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFFB2BBCE)),
          bodyLarge: TextStyle(fontSize: 16, color: Color(0xFF1E222B)),
          bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFFF8F9FB)),
          displaySmall: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFF1E222B)),
          displayMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF1E222B)),
          labelSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF616A7D)),
        ),

      ),
      home: SliderMade(),
    );
  }
}

