import 'package:flutter/material.dart';
import 'package:project/Data/data.dart';

import '../../Products/Constants/constants.dart';

class ShoppingCartScreenAppBar extends StatelessWidget {
  const ShoppingCartScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
Container(
      height: MediaQuery.sizeOf(context).height * 0.15,
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.025,
            right: MediaQuery.of(context).size.height * 0.017,
            left: MediaQuery.of(context).size.height * 0.020),
      child: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0,
        leading: IconButton(
                onPressed: () =>  Navigator.of(context).pop(),
                icon: Icon(Icons.keyboard_arrow_left_outlined),
                color: ProductScreenConstants.appBarColor,
                style: ButtonStyle(),
              ),
        title: Text("Shopping Cart (${Data.cart.toSet().length})", style: Theme.of(context).textTheme.bodyLarge,),
      ),
    );
  }
}