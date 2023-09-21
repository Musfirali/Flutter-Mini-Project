import 'package:flutter/material.dart';
import 'package:project/Data/data.dart';
import 'package:project/Product_Details/Widget/product_details_screen_info.dart';
import 'package:project/Products/Constants/constants.dart';
import 'package:project/Products/Widgets/products_screen_appbar.dart';


class ProductsGrid extends StatefulWidget {
  final indexFromPreviousScreen;
  const ProductsGrid({super.key, this.indexFromPreviousScreen});

  @override
  State<ProductsGrid> createState() => _ProductsGridState();
}

  List filterNames = ["Popular", "Low Price", "Fish", "Apples", "Potato"];
  List selectedFilter = [];
  List sampleData = ['One', 'Two', 'Three'];

class _ProductsGridState extends State<ProductsGrid> {

  @override
  Widget build(BuildContext context) {

    final selectedCategory = Data.category[widget.indexFromPreviousScreen];

    final filterProducts = selectedFilter.isEmpty
        ? selectedCategory.values.expand((products) {
            return products;
          }).toList()
        : selectedCategory.values.expand((products) {
            return products.where((product) {
              final productName = product["name"].toString().toLowerCase();
              return selectedFilter.isEmpty ||
                  selectedFilter.any((filter) => productName.contains(filter.toLowerCase()));
            }).toList();
          }).toList();


    return Scaffold(
      
      body: Column(
        children: [
          ProductsScreenAppBar(indexFromProductScreen: widget.indexFromPreviousScreen),

          Row(
            children: filterNames.map((e) => FilterChip(
              selected: selectedFilter.contains(e),
              label: Text(e), onSelected: (selected){
                setState(() {
                  if (selected) {
                    selectedFilter.add(e);
                  }
                  else {
                    selectedFilter.remove(e);
                  }
                });
              }
              )
              ).toList(),
            
          ),
          Expanded(child: GridView.builder(
            
      itemCount: filterProducts.length,
      
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
      
      itemBuilder: (context, index) {
        
         final product = filterProducts[index];
         
        return Stack(
          alignment: AlignmentDirectional.centerEnd,
          clipBehavior: Clip.none,
          children: [
            InkWell(

               onTap: ()  {
                   
                   Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsScreen(indexFromPreviousScreen: product))).then((value) {
                    setState(() {
                      
                    });
                   });
               },

              child: Card(
              color: const Color(0xFFF8F9FB),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.only(left: 17, bottom: 15, ),
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: 
                          Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(product["image"]),
                            
                          ],
                  ),
                    ),
                  
                    Text(product["price"].toString(),style: Theme.of(context).textTheme.displayMedium,),
                    Text(product["name"].toString(), style: Theme.of(context).textTheme.labelSmall,),
                  ],
                ),
              ),
                      ),
            ),
            SizedBox(
              height: 24,
              child: ElevatedButton(
                onPressed: (){  
                  setState(() {
                    Data.cart.add(product);
                  });         
                }, 
                
                child: const Icon(Icons.add, size: 12,),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: ProductScreenConstants.addToCartButtonColor,
                ),
                ),
            )
        ]);
      },
    )
      ),
        ],
      )
      
    );
  }
  }
  