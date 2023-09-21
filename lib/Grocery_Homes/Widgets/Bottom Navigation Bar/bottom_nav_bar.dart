import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project/Categories/shop_by_category_screen.dart';
import 'package:project/Grocery_Homes/grocery_home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List pages = [
    const GroceryHome(),
    const ShopByCategory(),
  ];

  int clickedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: pages[clickedIndex],
      ),

      bottomNavigationBar:  Container(
        
        color: const Color(0xFFF8F7FB),
        child:  Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
          child: GNav(
            selectedIndex: clickedIndex,
            onTabChange: (index) {
              setState(() {
                clickedIndex = index;
              });
              
            },
            color: Color(0xFF1E222B),
            activeColor: Color(0xFFFFC83A),
            tabBackgroundColor: Color(0xFF1E222B),
            padding: EdgeInsets.all(16),
            backgroundColor: Color(0xFFF8F7FB),
            
            
            gap: 8,
            
            tabs: [
              GButton(icon: Icons.home_outlined,text: "Home"),
              GButton(icon: Icons.category_outlined,text: "Categories"),
              GButton(icon: Icons.favorite_outline,text: "Favourite"),
              GButton(icon: Icons.more_vert_outlined,text: "More"),
            ],
            
            ),
        ),
      )
    );
  }
}
