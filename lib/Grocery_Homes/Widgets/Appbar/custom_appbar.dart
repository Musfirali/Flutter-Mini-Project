import 'package:flutter/material.dart';

import '../../../Shopping_Cart/shopping_cart_screen.dart';
import '../../Constants/grocery_screen_constants.dart';

class GroceryAppBar extends StatefulWidget {
  const GroceryAppBar({super.key});

  @override
  State<GroceryAppBar> createState() => _GroceryAppBarState();
}

class _GroceryAppBarState extends State<GroceryAppBar> {
  
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
       toolbarHeight: 100,
            elevation: 0,
            backgroundColor: GroceryScreenConstants.appBarColor,
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            title: const Text(
              "Hello, User",
              style: TextStyle(fontSize: 22),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCartScreen()));
                  }, icon: const Icon(Icons.shopping_bag)),
            ],
            bottom: AppBar(
              toolbarHeight: 80,
              elevation: 0,
              backgroundColor: GroceryScreenConstants.appBarColor,
              title: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: const Color(0xFF153075),
                ),
                width: 335,
                height: 56,
                child: const Center(
                  // widthFactor: 100,
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIconColor: Colors.white,
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}