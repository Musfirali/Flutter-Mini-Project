import 'package:flutter/material.dart';

import '../../Constants/constants.dart';

class ProductDetailsScreenDetailTab extends StatelessWidget {
  final productClicked;
  const ProductDetailsScreenDetailTab({super.key, this.productClicked});

  @override
  Widget build(BuildContext context) {
    return Padding(
                      padding: const EdgeInsets.only(top: 34, bottom: 34),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Details",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(
                            productClicked["description"],
                            style:
                                ProductDetailsScreenConstant.descriptionFontStyle,
                          ),
                          

                        ],
                      ),
                    );
  }
}