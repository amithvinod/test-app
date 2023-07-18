import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 0.144*screenHeight,
      color: Colors.blue,
      child: Padding(
        padding:const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                boxShadow: [ 
               BoxShadow(
                  color: Colors.black.withOpacity(0.2), //color of shadow
                  spreadRadius: 1, 
                  blurRadius: 5, 
                  offset: Offset(1, 8), 
                  
               ),
               
              ],
              ),
              
              child: TextField(
                
                decoration: InputDecoration(
                  prefixIconColor: Colors.black,
                  suffixIconColor: Colors.black,
                  hintText: "search quickart",
                  prefixIcon:const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),

                  ),
                   suffixIcon: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // added line
                mainAxisSize: MainAxisSize.min, // added line
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.mic),
                    onPressed: (){},
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: (){},
                  ),
                ],
              ),
                ),
              ),
            ),
            Container(
              width: 0.81*screenWidth,
              decoration: BoxDecoration(
                //border: Border.all(),
                //boxShadow: ,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [ 
               BoxShadow(
                  color: Colors.black.withOpacity(0.2), //color of shadow
                  spreadRadius: 1, 
                  blurRadius: 5, 
                  offset: Offset(1, 8), 
                  
               ),
               
              ],
              ),
              
              
              child: Row(
                children: [Icon((Icons.location_on)),Text(" Mumbai,Maharashtra",style: TextStyle(color: Colors.white),)]),
            )
          ],
        ),
      ),
    );
  }
}