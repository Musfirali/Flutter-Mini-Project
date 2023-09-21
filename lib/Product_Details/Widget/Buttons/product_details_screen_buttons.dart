import 'package:flutter/material.dart';
import 'package:project/Data/data.dart';

class ProductDetailsScreenButtons extends StatefulWidget {
  final indexFromProductDetailsScreen;
  const ProductDetailsScreenButtons(
      {super.key, this.indexFromProductDetailsScreen});

  @override
  State<ProductDetailsScreenButtons> createState() => 
      _ProductDetailsScreenButtonsState();
}

class _ProductDetailsScreenButtonsState
    extends State<ProductDetailsScreenButtons> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                Data.cart.add(widget.indexFromProductDetailsScreen);
                SnackBar(content: Text("Added"));
              });
            },
            child: Text("Add to Cart"),
            style: ElevatedButton.styleFrom(),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Buy Now"),
            style: ElevatedButton.styleFrom(),
          )
        ],
      ),
    );
  }
}
