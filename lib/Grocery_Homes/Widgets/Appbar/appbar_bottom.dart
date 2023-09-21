import 'package:flutter/material.dart';

import '../../Constants/grocery_screen_constants.dart';

class GroceryAppBarBottom extends StatefulWidget {
  const GroceryAppBarBottom({super.key});

  @override
  State<GroceryAppBarBottom> createState() => _GroceryAppBarBottomState();
}

class _GroceryAppBarBottomState extends State<GroceryAppBarBottom> {
  String selectedValue = "Select Location";
  String selectedTimeValue = "1 Hour";
  @override
  Widget build(BuildContext context) {
    return ListTile(
                tileColor: GroceryScreenConstants.appBarColor,
                leading: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: GroceryScreenConstants.opacityLabelAppbar,
                      child: Text("Delivery To",
                          style: TextStyle(
                              fontSize:
                                  GroceryScreenConstants.labelAppbarFontSize,
                              fontWeight:
                                  GroceryScreenConstants.labelAppbarFontWeight,
                              color: GroceryScreenConstants.labelAppbarColor)),
                    ),
                    Expanded(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          underline: Container(
                            decoration: const BoxDecoration(),
                          ),
                          borderRadius: BorderRadius.circular(
                              GroceryScreenConstants.dropDownBorderRadius),
                          dropdownColor: GroceryScreenConstants.dropdownColor,
                          style: Theme.of(context).textTheme.bodyMedium,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          items: getDropdownItems(),
                          value: selectedValue,
                        ),
                      ),
                    ),
                  ],
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                        opacity: GroceryScreenConstants.opacityLabelAppbar,
                        child: Text("Within",
                            style: TextStyle(
                                fontSize:
                                    GroceryScreenConstants.labelAppbarFontSize,
                                fontWeight: GroceryScreenConstants
                                    .labelAppbarFontWeight,
                                color:
                                    GroceryScreenConstants.labelAppbarColor))),
                    Expanded(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          borderRadius: BorderRadius.circular(
                              GroceryScreenConstants.dropDownBorderRadius),
                          dropdownColor: GroceryScreenConstants.dropdownColor,
                          style: Theme.of(context).textTheme.bodyMedium,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedTimeValue = newValue!;
                            });
                          },
                          items: getDropdownTime(),
                          value: selectedTimeValue,
                        ),
                      ),
                    ),
                  ],
                ),
                contentPadding:
                    const EdgeInsets.only(top: 20, left: 20, right: 20),
              );
  }
}