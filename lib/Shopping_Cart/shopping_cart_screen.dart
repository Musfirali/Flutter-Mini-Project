
import 'package:flutter/material.dart';
import 'package:project/Data/data.dart';
import 'package:project/Shopping_Cart/Items_List_VIew/shopping_cart_screen_items.dart';
import 'package:project/Shopping_Cart/appbar/shopping_cart_screen_appbar.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {

  
  @override
  Widget build(BuildContext context) {

    // double price = 0;
    // for (var element in Data.cart) {
    //   price = Data.cart[element]["price"] + Data.cart[element+1]["price"];
    // }
    return Scaffold(
      body: Column(
        children: [
          ShoppingCartScreenAppBar(),
          
          Expanded(child: ShoppingCartScreenItems()),
          Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Subtotal"),
                    
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}