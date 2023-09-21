import 'package:flutter/material.dart';
import 'package:project/Product_Details/Constants/constants.dart';
import 'package:project/Product_Details/Widget/Details%20Tab/product_details_screen_prodetails.dart';
import 'package:project/Product_Details/Widget/DropDowns/product_details_screen_dropdowns.dart';
import 'package:project/Product_Details/Widget/Name%20and%20Price/product_details_screen_name_price.dart';
import 'package:project/Product_Details/Widget/product_details_image_slider.dart';
import 'package:project/Product_Details/Widget/product_details_screen_appbar.dart';

import '../../Data/data.dart';
import '../../Shopping_Cart/shopping_cart_screen.dart';

class ProductDetailsScreen extends StatefulWidget {
  final indexFromPreviousScreen;
  const ProductDetailsScreen({super.key, this.indexFromPreviousScreen});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

bool isvisibleNutriFacts = false;
bool isVisibleReviews = false;

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final productClicked = widget.indexFromPreviousScreen;
    final productClickedPrice = productClicked["price"];

    return Scaffold(
        body: Column(
      children: [
       ProductDetailsScreenAppBar(),
      ProductDetailsPageImageSlider(
        indexFromPreviousScreen: productClicked,
      ),
// MediaQuery.sizeOf(context).height*0.20
      Expanded(
        child: SingleChildScrollView(
          child: Card(
              margin: const EdgeInsets.all(15),
              color: Colors.grey[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductDetailScreenNamePrice(
                      productClicked: productClicked,
                    ),
                    ProductDetailsScreenDetailTab(
                      productClicked: productClicked,
                    ),
                    const ProductDetailsScreenDropDowns(),
                  ],
                ),
              )),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                Data.cart.add(widget.indexFromPreviousScreen);
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Added"),
                  duration: Duration(milliseconds: 400),
                ));
              });
            },
            // ignore: sort_child_properties_last
            child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.070,
                width: MediaQuery.sizeOf(context).width * 0.30,
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Add to Cart",
                        style: TextStyle(
                          color: Color(0xFF2A4BA0),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ])),

            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      ProductDetailsScreenConstant.borderRadiusButton),
                ),
                backgroundColor: Colors.white,
                side: BorderSide(color: Color(0xFF2A4BA0))),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCartScreen()));
            },

            // ignore: sort_child_properties_last
            child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.070,
                width: MediaQuery.sizeOf(context).width * 0.35,
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Buy Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ])),

            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      ProductDetailsScreenConstant.borderRadiusButton),
                ),
                backgroundColor: Color(0xFF2A4BA0),
                side: BorderSide(color: Color(0xFF2A4BA0))),
          )
        ],
      ),
    ]));
  }
}
