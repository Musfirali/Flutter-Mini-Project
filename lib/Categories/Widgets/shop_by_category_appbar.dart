import 'package:flutter/material.dart';

import '../../Grocery_Homes/Constants/grocery_screen_constants.dart';
import '../../Shopping_Cart/shopping_cart_screen.dart';

class CategoryAppBar extends StatelessWidget {
 
  const CategoryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: GroceryScreenConstants.appBarColor,
      height: MediaQuery.sizeOf(context).height*0.36,

      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.025, right: MediaQuery.of(context).size.height*0.017, left: MediaQuery.of(context).size.height*0.020),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            toolbarHeight: MediaQuery.of(context).size.height*0.1,
            titleSpacing: 0,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title:  const Text("Hey, User", style: 
            TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Color(0xFFF8F9FB)
        ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCartScreen()));
          }, icon: const Icon(Icons.shopping_bag_outlined)),
        ],
          ),
          
          const Text("Shop" , style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w300,
            color: Color(0xFFFAFBFD),
            ),
            ),
            const Text("By Category" , style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w800,
            color: Color(0xFFFAFBFD),
            ),
            ),
            
          
        ],
      )
    );

  }  

}