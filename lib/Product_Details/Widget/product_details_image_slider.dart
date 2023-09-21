import 'package:flutter/material.dart';

class ProductDetailsPageImageSlider extends StatefulWidget {
  final indexFromPreviousScreen;

  const ProductDetailsPageImageSlider(
      {super.key, this.indexFromPreviousScreen});

  @override
  State<ProductDetailsPageImageSlider> createState() => _ProductDetailsPageImageSliderState();
}

class _ProductDetailsPageImageSliderState extends State<ProductDetailsPageImageSlider> {
  int activePage = 0;
  @override
  Widget build(BuildContext context) {

    final img = widget.indexFromPreviousScreen["images"];
    

    List<Widget> imgIndicator(imgsLength, currentIndex) {
      return List<Widget>.generate(imgsLength, (index) {
        return Container(
          
          margin: EdgeInsets.all(3),
          width: 25,
          height: 5,
          decoration: BoxDecoration(
            
              color: currentIndex == index ? Colors.amber : Colors.black12,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20)
              ),
              
        );
      });
    };

    return Column(
      children: [
        SizedBox(
          height: 130,
          width: double.infinity,
          child: PageView.builder(
              itemCount: img.length,
              
              onPageChanged:(value) {
                setState(() {
                  activePage = value;
                });
              },
              itemBuilder: (context, pageposition) {
                print(activePage);
                return Container(
                  
                  child: Image.asset(img[pageposition]),
                );
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
            imgIndicator(img.length, activePage)
          
        ),
      ],

    );
  }
}
