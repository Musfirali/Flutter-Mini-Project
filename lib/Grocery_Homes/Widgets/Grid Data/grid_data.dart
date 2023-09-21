import 'package:flutter/material.dart';

import '../../../Data/data.dart';

class GridData extends StatefulWidget {
  const GridData({super.key});

  @override
  State<GridData> createState() => _GridDataState();
}

class _GridDataState extends State<GridData> {

  


  @override
  Widget build(BuildContext context) {
    
    return GridView.builder(
      


      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: Data.category[1]["Fruits"].length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
      
      itemBuilder: (context, index) {
        final fruitsIndex = Data.category[1]["Fruits"][index];
        final imgURL = fruitsIndex["image"];
        final name = fruitsIndex["name"];
        final price = fruitsIndex["price"];
        return Card(
          color: Color(0xFFF8F9FB),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.only(left: 17, bottom: 15, ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(imgURL),
                      
                      
                    ],
                  ),
                ),
              
                Text("\$$price",style: Theme.of(context).textTheme.displayMedium,),
                Text(name, style: Theme.of(context).textTheme.labelSmall,),
              ],
            ),
          ),
        );
      },
    );
  }
}