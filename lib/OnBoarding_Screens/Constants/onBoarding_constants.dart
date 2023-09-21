import 'package:flutter/material.dart';
import 'package:project/Grocery_Homes/Widgets/Bottom%20Navigation%20Bar/bottom_nav_bar.dart';


class OnBoardingConstants{
  static Color bgColor =  Color(0xFF2A4BA0);
  static double buttonWidth(context, value){
      
      var buttonWidth = MediaQuery.of(context).size.width;

    return buttonWidth;
  }

    static Color buttonColor =  Color(0xFFFAFBFD);
 
    static double picHeight = 129;
    static double radius = 20;

  static void groceryScreen(context){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavBar(),));
  }

}