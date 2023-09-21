import 'package:flutter/material.dart';
import 'package:project/Grocery_Homes/Widgets/Banners/Cosntants/banner_constants.dart';

class Banner2 extends StatelessWidget {
  const Banner2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          height: BannerConstants.boxHeight,
          width: BannerConstants.smallBoxWidth,
          decoration: BoxDecoration(
            color: BannerConstants.greyColor,
            borderRadius: BorderRadius.circular(BannerConstants.boxRadius),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("215 ", style: TextStyle(
                      color: Color(0xFF1E222B),
                      fontWeight: FontWeight.w800,
                      fontSize: 26,

                    ),),
                    Text("HRS", style: TextStyle(
                  color: Color(0xFF1E222B),
                  fontWeight: FontWeight.w300,
                  fontSize: 26,
                ),),
                  ],
                ),
                
                Column(
                  children: [
                    Text("Your Time Saved", style: TextStyle(
                  color: Color(0xFF1E222B),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,)
                    )
                  ],
                )
                
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 20),
          height: BannerConstants.boxHeight,
          width: BannerConstants.smallBoxWidth,
          decoration: BoxDecoration(
            color: BannerConstants.yellowColor,
            borderRadius: BorderRadius.circular(BannerConstants.boxRadius),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("346 ", style: TextStyle(
                      color: Color(0xFF1E222B),
                      fontWeight: FontWeight.w800,
                      fontSize: 26,

                    ),),
                    Text("USD", style: TextStyle(
                  color: Color(0xFF1E222B),
                  fontWeight: FontWeight.w300,
                  fontSize: 26,
                ),),
                  ],
                ),
                
                Column(
                  children: [
                    Text("Your Total Savings", style: TextStyle(
                  color: Color(0xFF1E222B),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,)
                    )
                  ],
                )
                
              ],
            ),
          ),
        ),
  
      ],
  
    );
  
  }
  
}
