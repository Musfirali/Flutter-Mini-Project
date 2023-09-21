

import 'package:flutter/material.dart';
import 'package:project/OnBoarding_Screens/Constants/onBoarding_constants.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OnBoardingConstants.bgColor,
      body: Column(
        children: [
          Expanded(
            child: Container(
              
              margin: const EdgeInsets.only(top: 42, left: 33, bottom: 70),
              child: ListTile(
                
                title: Text("Your holiday \nshopping \ndelivered to Screen \none\n", style: Theme.of(context).textTheme.displayLarge),
                
                subtitle: Text("There's something for everyone \nto enjoy with Sweet Shop\nFavourites Screen 1", style: Theme.of(context).textTheme.headlineMedium),
          
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(OnBoardingConstants.radius),
            
            child: Image.asset("assets/Images/delivery.png",
            fit: BoxFit.contain,
            height: MediaQuery.sizeOf(context).height*0.20,
            width: MediaQuery.sizeOf(context).width,),
            
          ),

            Container(
              height: MediaQuery.sizeOf(context).height*0.10,
              width: MediaQuery.sizeOf(context).width*0.65,
              margin: const EdgeInsets.only(top: 51, bottom: 40),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: OnBoardingConstants.buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(OnBoardingConstants.radius)
                  )                
                ),
                onPressed: (
                ){
                  setState(() {
                    OnBoardingConstants.groceryScreen(context);
                  });
                },
                 child:   Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Get Started",
                    style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const Icon(Icons.arrow_right_alt, color: Colors.black, size: 30,),
                  ],
                 )
                 ),
            ),

        ],
      ),

    );
  }
}