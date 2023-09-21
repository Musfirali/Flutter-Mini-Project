import 'package:flutter/material.dart';
import 'package:project/Grocery_Homes/Widgets/Appbar/appbar_bottom.dart';
import 'package:project/Grocery_Homes/Widgets/Appbar/custom_appbar.dart';
import 'package:project/Grocery_Homes/Widgets/Banners/banner1.dart';
import 'package:project/Grocery_Homes/Widgets/Banners/banner2.dart';

import 'package:project/Grocery_Homes/Widgets/Grid%20Data/grid_data.dart';


class GroceryHome extends StatefulWidget {
  const GroceryHome({super.key});

  @override
  State<GroceryHome> createState() => _GroceryHomeState();
}

class _GroceryHomeState extends State<GroceryHome> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavBar(),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        
        
        slivers: [
          GroceryAppBar(),  
          
        
          SliverList(
            delegate: SliverChildListDelegate([
              
              GroceryAppBarBottom(),
              
              Container(
                margin: const EdgeInsets.only(top: 27,left: 20),
                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/Images/squiggles_and_doodles_background.jpg"))),
                height: 123,
                // color: Colors.transparent,
                child: ListView(scrollDirection: Axis.horizontal, 
                children: const [
                Banner1(),
                Banner2(),
                ]),
              ),
              Container(
                margin: const EdgeInsets.only(top: 35, bottom: 22, left: 20),
                height: 26,
                child: Text("Deals on Fruits & Tea",
                style: Theme.of(context).textTheme.displaySmall,
                ),
              ),

               Container(
                margin: const EdgeInsets.only( left: 20, right: 9),
                child: GridData(),
                ),

            ]),
          ),
        
        ],
        
      ),
    );
  }
}
