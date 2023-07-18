import 'package:flutter/material.dart';
import 'package:quickart/screens/Homepage/widgets/product_data.dart';

Widget storywidget(ProductData data, BuildContext context) {
  return Column(
    children: [
      InkWell(
        onTap: (){},
        child: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image:NetworkImage(data.imageurl),
                      )
                  ),
                  
                ),
      ),
              Text(data.name)
    ],
  );
}

Widget adwidget(AdData data, BuildContext context) {
  final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
  return Image(image: NetworkImage(data.adurl),height:0.235*screenHeight,width: 0.804*screenWidth,);
}
