import 'package:flutter/material.dart';
import 'package:project/Categories/Widgets/shop_by_category_appbar.dart';
import 'package:project/Categories/Widgets/shop_by_category_grid.dart';

class ShopByCategory extends StatefulWidget {
  const ShopByCategory({super.key});

  @override
  State<ShopByCategory> createState() => _ShopByCategoryState();
}

class _ShopByCategoryState extends State<ShopByCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
           Column(
            children: [
              CategoryAppBar(),
              Expanded(
          child:    CategoryScreenGrid(),
              ),
            ],
          ),
        );
            //  body: ,
    
  }
}