import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravelHomeScreen extends StatefulWidget {
  const TravelHomeScreen({super.key});

  @override
  State<TravelHomeScreen> createState() => _TravelHomeScreenState();
}

class _TravelHomeScreenState extends State<TravelHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: headerParts(),
      body: 
      Column(
        
        children: [
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Popular places" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,
                  color : Colors.black),
             ),
            Text(" see all" , style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,
                color : Colors.blue)),
            ],
          ),
          ),
          SizedBox(height: 15,),
          SingleChildScrollView(scrollDirection: Axis.horizontal, padding: EdgeInsets.only(bottom : 40 ),
          child: Row(children: [],),
          )
        ],
      )
      

    );
  }
  AppBar headerParts(){
      return   AppBar(
        elevation: 0,
        backgroundColor: Colors.white54,
        leadingWidth: 180,
        leading:const Row(
          children: [
            SizedBox(width: 50),
            Icon(Icons.location_city , color: Colors.black),
            SizedBox(width: 15,),
            Text("Hammamt_Tunisia" , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 18 , color: Colors.black),
            ),
            Icon(Icons.location_city , color: Colors.black),

          ],
        ),
        actions: [
          Container(
            decoration : BoxDecoration(
              borderRadius : BorderRadius.circular(15),
              border : Border.all(
                color: Colors.black12
              )
            ),
            padding: const EdgeInsets.all(7),
            child : const Stack(
              children: [
                Icon(Icons.notification_add , color: Colors.black12, size: 30,),
                Positioned(top: 5,
                right: 30, child:
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.red,
                  )




                  ,),
              ],
            )
          ),
          SizedBox( height: 15,)
        ],
      );

  }
}

