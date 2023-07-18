import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quickart/screens/Homepage/widgets/bottom_nav.dart';
import 'package:quickart/screens/Homepage/widgets/items.dart';
import 'package:quickart/screens/Homepage/widgets/product_data.dart';
import 'package:quickart/screens/Homepage/widgets/searchbar.dart';
import 'package:quickart/screens/Homepage/widgets/story_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 0.081 * screenHeight,
                ),
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 16);
               },
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                      itemCount: products.length,
                      itemBuilder: (BuildContext context, int index) {
                        return storywidget(products[index], context)
                        ;
                      }),
                ),
                SizedBox(
                  
                  height: 0.235*screenHeight,
                  width: double.infinity,
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 16);
               },
                     scrollDirection: Axis.horizontal,
                     shrinkWrap: true,
                      itemCount: adItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        return adwidget(adItems[index], context)
                        ;
                      }),
                ),
                const SizedBox(height: 10,),
                const SearchBar(),
                
                Container(
                  color: Color.fromARGB(255, 206, 199, 199),
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0,right:8,top:0,bottom:8),
                    child: ListView.separated(
                      physics:const NeverScrollableScrollPhysics(),
                      separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 8);
                               },
                      
                      shrinkWrap: true,
                        itemCount: itemList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return listofItem(itemList[index], context)
                          ;
                        }),
                  ),
                ),
                
              ],
            ),
          ),
          bottomNavigationBar: const BottomNav()),
    );
  }
}
