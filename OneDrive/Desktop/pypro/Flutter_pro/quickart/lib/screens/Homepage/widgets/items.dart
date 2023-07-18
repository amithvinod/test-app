import 'package:flutter/material.dart';
import 'package:quickart/screens/Homepage/widgets/product_data.dart';


  Widget listofItem(ItemData data, BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(5.0),
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 0.1267*screenHeight,
              width: 0.908*screenWidth,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image(image: NetworkImage(data.img,),
              height: 0.1267*screenHeight,
              width: 0.908*screenWidth,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(data.hotelName,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                Row(children: [Icon(Icons.mood,color: Colors.blue,),Text(data.liked.toString()+"%",style: TextStyle(color: Colors.blue),)],)
              ],
            ),
            Text(data.country)
          ],
        ),
      ),
    );
  }
