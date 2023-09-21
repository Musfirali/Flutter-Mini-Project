import 'package:flutter/material.dart';
import 'package:project/Product_Details/Widget/product_details_image_slider.dart';
import 'package:project/Product_Details/Widget/product_details_screen_appbar.dart';
import 'package:project/Product_Details/Widget/product_details_screen_info.dart';

class ProductDetailsPage extends StatefulWidget {
  final indexFromProductScreen;

  ProductDetailsPage({super.key, this.indexFromProductScreen});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body:  Column(
        children: [
          ProductDetailsScreenAppBar(),
          ProductDetailsPageImageSlider(
            indexFromPreviousScreen: widget.indexFromProductScreen,
          ),
           ProductDetailsScreen(
              indexFromPreviousScreen: widget.indexFromProductScreen
              ), 
        ],
      ),
    );
  }
}
