import 'package:flutter/material.dart';
import 'package:project/Data/data.dart';

class ShoppingCartScreenItems extends StatefulWidget {
  const ShoppingCartScreenItems({super.key});

  @override
  State<ShoppingCartScreenItems> createState() => _ShoppingCartScreenItemsState();
}

class _ShoppingCartScreenItemsState extends State<ShoppingCartScreenItems> {
  @override
  Widget build(BuildContext context) {
   List temp = Data.cart.toSet().toList();
    return ListView.builder(
      
    itemCount: Data.cart.toSet().length,
    itemBuilder: (context, index){
    final product = Data.cart[index];
    int sameIndexCount = 0;
    for (var element in Data.cart) {
      if (element == Data.cart[index+1]) {
        sameIndexCount++;
      }
      
      
    }
    print(sameIndexCount);
     return ListTile(
      // tileColor: Colors.greenAccent,
    
      leading: Image.asset(temp[index]["image"], height: 30,),
      title: Text(temp[index]["name"]),
      subtitle: Text("\$${temp[index]["price"]}"),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[100],
            child: IconButton(onPressed: (){
              setState(() {
                sameIndexCount--;
              });
              
            }, 
            color: Colors.black,
            icon: Icon(Icons.remove,),iconSize: 20, 
          )
          ),
          
          Text(sameIndexCount.toString(), style: Theme.of(context).textTheme.bodyLarge,),

          CircleAvatar(
            backgroundColor: Colors.grey[100],
            child: IconButton(onPressed: (){}, 
            color: Colors.black,
            icon: Icon(Icons.add,),iconSize: 20, 
          )
          )
        ],
      ),
    );
    });
    
    
  }
}