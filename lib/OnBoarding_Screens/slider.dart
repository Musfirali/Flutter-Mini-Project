import 'package:flutter/material.dart';
import 'package:project/OnBoarding_Screens/first_page.dart';
import 'package:project/OnBoarding_Screens/second_page.dart';

class SliderMade extends StatelessWidget {
  const SliderMade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          FirstScreen(),
          SecondScreen(),
        ],
      ),
    );
  }
}