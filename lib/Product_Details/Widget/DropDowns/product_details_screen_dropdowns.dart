import 'package:flutter/material.dart';

import '../../Constants/constants.dart';

class ProductDetailsScreenDropDowns extends StatefulWidget {
  const ProductDetailsScreenDropDowns({super.key});

  @override
  State<ProductDetailsScreenDropDowns> createState() => _ProductDetailsScreenDropDownState();
}

bool isvisibleNutriFacts = false;
bool isVisibleReviews = false;

class _ProductDetailsScreenDropDownState extends State<ProductDetailsScreenDropDowns> {
  

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ListTile(
          horizontalTitleGap: 0,
          minLeadingWidth: 0,
          title: Text(
            "Nutritional facts",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          trailing: Icon(Icons.arrow_drop_down_sharp),
          onTap: () {
            setState(() {
              isvisibleNutriFacts = !isvisibleNutriFacts;
            });
          },
        ),
        Visibility(
          visible: isvisibleNutriFacts,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0), // Adjust the padding as needed
            child: Text(
              "Nutritional Facts Data", // Replace with actual nutritional facts data
              style: ProductDetailsScreenConstant.descriptionFontStyle,
            ),
          ),
        ),
        Divider(),
        ListTile(
          horizontalTitleGap: 0,
          minLeadingWidth: 0,
          title: Text(
            "Reviews",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          trailing: Icon(Icons.arrow_drop_down_sharp),
          onTap: () {
            setState(() {
              isVisibleReviews = !isVisibleReviews;
            });
          },
        ),
        Visibility(
          visible: isVisibleReviews,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0), // Adjust the padding as needed
            child: Text(
              "Reviews Data", // Replace with actual reviews data
              style: ProductDetailsScreenConstant.descriptionFontStyle,
            ),
          ),
        ),
      ],
    );
  }
}