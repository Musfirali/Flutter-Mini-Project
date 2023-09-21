import 'package:flutter/material.dart';
import 'package:project/Products/Constants/constants.dart';
import 'package:project/Shopping_Cart/shopping_cart_screen.dart';

import '../../Data/data.dart';

class ProductDetailsScreenAppBar extends StatelessWidget {


  const ProductDetailsScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        
        height: MediaQuery.sizeOf(context).height * 0.15,
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.025,
            right: MediaQuery.of(context).size.height * 0.017,
            left: MediaQuery.of(context).size.height * 0.020),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AppBar(
            
            titleSpacing: 21,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () =>  Navigator.of(context).pop(),
              icon: Icon(Icons.keyboard_arrow_left_outlined),
              color: ProductScreenConstants.appBarColor,
              style: ButtonStyle(),
            ),
            
            actions: [
              
              Stack(
                alignment: AlignmentDirectional.topEnd,
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                  backgroundColor: ProductScreenConstants.cartItemCountColor,
                  radius: 12,
                  child: Text(Data.cart.length.toString(), style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),),
                ),
                  IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCartScreen()));
                  },
                  icon: const Icon(Icons.shopping_bag_outlined),iconSize: 24,
                  color: ProductScreenConstants.appBarColor,
                ),
                
             ] 
             ),
            ],
          )
        ]));
  }
}
