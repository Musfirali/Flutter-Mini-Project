import 'package:flutter/material.dart';
import 'package:project/Products/Constants/constants.dart';

import '../../Data/data.dart';
import '../../Shopping_Cart/shopping_cart_screen.dart';
// import '../../Grocery_Homes/Constants/grocery_screen_constants.dart';

class ProductsScreenAppBar extends StatefulWidget {
  final indexFromProductScreen;

  const ProductsScreenAppBar({super.key, this.indexFromProductScreen});

  @override
  State<ProductsScreenAppBar> createState() => _ProductsScreenAppBarState();
}

class _ProductsScreenAppBarState extends State<ProductsScreenAppBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.blue,
        height: MediaQuery.sizeOf(context).height * 0.15,
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.025,
            right: MediaQuery.of(context).size.height * 0.017,
            left: MediaQuery.of(context).size.height * 0.020),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AppBar(
            // toolbarHeight: 70,
            titleSpacing: 21,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.keyboard_arrow_left_outlined),
              color: ProductScreenConstants.appBarColor,
              style: ButtonStyle(),
            ),
            title: Text(
              Data.category[widget.indexFromProductScreen].keys.toString(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: ProductScreenConstants.appBarColor,
                padding: EdgeInsets.only(right: 38),
              ),
              Stack(
                    alignment: AlignmentDirectional.topEnd,
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        backgroundColor: ProductScreenConstants.cartItemCountColor,
                        radius: 12,
                        child: Text(
                          Data.cart.length.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: ()  {
             Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCartScreen()));
            },
                        icon: const Icon(Icons.shopping_bag_outlined),
                        iconSize: 24,
                        color: ProductScreenConstants.appBarColor,
                      ),
             ] 
             )   
            ]
          )
        ]
        )
    );
                }
            
  }

