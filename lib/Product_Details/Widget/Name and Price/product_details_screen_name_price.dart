import 'package:flutter/material.dart';

import '../../Constants/constants.dart';

class ProductDetailScreenNamePrice extends StatelessWidget {
  final productClicked;
  const ProductDetailScreenNamePrice({super.key, this.productClicked});

  @override
  Widget build(BuildContext context) {
    final productClickedPrice = productClicked["price"];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productClicked["name"],
          style: ProductDetailsScreenConstant.productNameFontStyle,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "\$$productClickedPrice",
                    style: ProductDetailsScreenConstant.productPriceFontStyle,
                  ),
                  Text(
                    "/KG",
                    style: ProductDetailsScreenConstant
                        .productPriceFontStyleOfUnit,
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 24,
                width: 84,
                child: Text(
                  "\$22.04% OFF ",
                  style: ProductDetailsScreenConstant.discountFontStyle,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: ProductDetailsScreenConstant.blueColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Text(
                "Reg: \$56.70 USD",
                style: ProductDetailsScreenConstant.regPriceFontStyle,
              ),
            ],
          ),
        ),
        Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star_half,
                            color: Colors.amber,
                          ),
                          Text(
                            "   110 Reviews",
                            style:
                                ProductDetailsScreenConstant.regPriceFontStyle,
                          ),
                        ],
                      ),
      ],
    );
  }
}
