import 'package:flutter/material.dart';
import 'package:quickart/screens/Homepage/constants.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(border: Border(top: BorderSide(color: black))),
      
      child:const TabBar(
         labelColor: Colors.blue,
          
         unselectedLabelColor: Color.fromARGB(255, 191, 186, 186),
          tabs:  [
            Tab(icon: homeIcon),
            Tab(icon: profileIcon),
            Tab(icon: cartIcon,),
            Tab(icon:menuIcon)
          ]
          ),
    );
  }
}