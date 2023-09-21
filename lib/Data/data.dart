import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  const Data({super.key});

  static List<Map> category = [
    {
      "Meat": [
        {
          "name": "Fish",
          "description": "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
          "price": 20,
          "image": "assets/Images/Product_Images/Meat/Fish/fish(1).png",
          "images": [
            "assets/Images/Product_Images/Meat/Beef/beef.png",
            "assets/Images/Product_Images/Meat/Beef/meat.png",
            "assets/Images/Product_Images/Meat/Beef/meat(1).png"
          ],
        },
        {
          "name": "Beef",
          "description": "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
          "price": 40,
          "image": "assets/Images/Product_Images/Meat/Beef/meat.png",
          "images": [
            "assets/Images/Product_Images/Meat/Fish/fish.png",
            "assets/Images/Product_Images/Meat/Fish/fish(1).png",
            "assets/Images/Product_Images/Meat/Fish/koi-fish.png"
          ],
        },
        {
          "name": "Chicken",
          "description": "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
          "price": 30,
          "image": "assets/Images/Product_Images/Meat/Chicken/Icon/icons8-kfc-chicken-48.png",
          "images": [
            
          ],
        }
      ],
    },
    {
      "Fruits": [
        {
          "name": "Apples Package 1 | 1 bundle",
          "description": "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
          "price": 20,
          "image": "assets/Images/apple_415682.png",
          "images": [
            
          ],
        },
        {
          "name": "Oranges Package 1 | 1 bundle",
          "description": "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
          "price": 50,
          "image": "assets/Images/orange_3137032.png",
          "images": [
            
          ],
        },
        {
          "name": "Apples Package 1 | 1 bundle",
          "description": "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
          "price": 20,
          "image": "assets/Images/apple_415682.png",
          "images": [
            
          ],
        },
        {
          "name": "Oranges Package 1 | 1 bundle",
          "description": "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
          "price": 50,
          "image": "assets/Images/orange_3137032.png",
          "images": [
            
          ],
        },
        {
          "name": "Bananas Package 2 | 1 bundle",
          "description": "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
          "price": 10,
          "image": "assets/Images/apple_415682.png",
          "images": [
            
          ],
        },
        {
          "name": "Apples Package 1 | 1 bundle",
          "description": "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
          "price": 20,
          "image": "assets/Images/apple_415682.png",
          "images": [
            
          ],
        },
      ]
    },
    {
      "Vegetables": [
        {
          "name": "Tomato",
          "description": "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
          "price": 20,
          "image": "",
          "images": [
            
          ],
        },
        {
          "name": "Potato",
          "description": "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
          "price": 40,
          "image": "",
          "images": [
            
          ],
        },
        {
          "name": "Red Chillie",
          "description": "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
          "price": 30,
          "image": "",
          "images": [
            
          ],
        }
      ],
    },
    {
      "Apparel": [
        {
          "name": "Tomato",
          "description": "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
          "price": 20,
          "image": "",
          "images": [
            
          ],
        },
      ]
    },
     {
      "Groceries": [
        {
          "name": "Tomato",
          "description": "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
          "price": 20,
          "image": "",
          "images": [
            
          ],
        },
      ]
    },
    {
      "Skin Care": [
        {
          "name": "Tomato",
          "description": "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
          "price": 20,
          "image": "",
          "images": [
            
          ],
        },
      ]
    },
  ];

  static List<dynamic> cart = [];

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
