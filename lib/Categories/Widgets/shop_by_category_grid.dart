import 'package:flutter/material.dart';
import 'package:project/Products/products_main_screen.dart';

import '../../Data/data.dart';

class CategoryScreenGrid extends StatefulWidget {
  const CategoryScreenGrid({super.key});

  @override
  State<CategoryScreenGrid> createState() => _CategoryScreenGridState();
}

class _CategoryScreenGridState extends State<CategoryScreenGrid> {
  @override
  Widget build(BuildContext context) {
    
    return GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
    itemCount: Data.category.length,
    
     itemBuilder: (context, index) {
      
        final categoryIndex = Data.category[index].keys;
        final fruitsIndex = Data.category[1]["Fruits"][index];
        final imgURL = fruitsIndex["image"];
      
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsGrid(indexFromPreviousScreen: index)));
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.024, vertical: 10),
            height: MediaQuery.of(context).size.height*0.164,
            width: MediaQuery.of(context).size.height*0.154,      
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xFFE0E2EE)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(imgURL),
          
                  ],
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 21),
                  child: Text(categoryIndex.toString(), style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1E222B),
                  )),
                )
              ],
            ),
          ),
        ); 
     }
    );
  }
}