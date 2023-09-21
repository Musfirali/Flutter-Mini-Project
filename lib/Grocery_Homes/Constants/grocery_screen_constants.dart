import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project/OnBoarding_Screens/Constants/onBoarding_constants.dart';

class GroceryScreenConstants{
  static double borderRadius = 20;
  static Color appBarColor =  Color(0xFF2A4BA0);

  static Color labelAppbarColor =  Color(0xFFF8F9FB);
  static FontWeight labelAppbarFontWeight = FontWeight.w800;
  static double labelAppbarFontSize = 11;
  static Color dropdownColor =  OnBoardingConstants.bgColor;
  static double dropDownBorderRadius = 10;
  static double opacityLabelAppbar = 0.5;
}

// dropdown_logic.dart

// import 'package:flutter/material.dart';

List<DropdownMenuItem<String>> getDropdownItems() {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(
        value: "Select Location",
        child: Text("Select Location")), // Add a default item
    const DropdownMenuItem(value: "USA", child: Text("USA")),
    const DropdownMenuItem(value: "Canada", child: Text("Canada")),
    DropdownMenuItem(
      value: "Add Location",
      child: TextButton(onPressed: () => Null, child: const Text("hello")),
    ),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> getDropdownTime() {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(
        value: "1 Hour",
        child: Text("1 Hour")), // Add a default item
    const DropdownMenuItem(value: "2 Hour", child: Text("2 Hour")),
    const DropdownMenuItem(value: "3 Hour", child: Text("3 Hour")),
  ];
  return menuItems;
}