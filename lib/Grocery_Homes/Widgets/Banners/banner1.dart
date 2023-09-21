import 'package:flutter/material.dart';
import 'package:project/Grocery_Homes/Widgets/Banners/Cosntants/banner_constants.dart';

class Banner1 extends StatelessWidget {
  const Banner1({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      margin: EdgeInsets.only(right: 20),
      height: BannerConstants.boxHeight,
      width: BannerConstants.largeBoxWidth,
      decoration: BoxDecoration(
        color: BannerConstants.yellowColor,
        borderRadius: BorderRadius.circular(BannerConstants.boxRadius),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.only(top: 10, left: 20),
        leading: Image.asset("assets/Images/icons8-discount-tag-68.png",),
        minLeadingWidth: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Get", style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            )),
            Text("50% OFF", style: TextStyle(
              // fontFamily: "Manrope",
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w800,
            )),
            Text("On first 03 orders", style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w300,
            )),
          ],
        ),
      ),
    );
    

  }
}
