import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_mate/screens/home.dart';
class Confirmed extends StatefulWidget{

  @override
  State<StatefulWidget> createState() =>ConfirmedState();
}
class ConfirmedState extends State<Confirmed>{

  @override
  void initState(){
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context)=>Home()
          )
      );
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SafeArea(
         child: SingleChildScrollView(
           child: Center(
             child: Column(
               children: [
                 SizedBox(
                   height: 200,
                 ),
                 Image(
                     height: 200,
                     width: 200,
                     image: AssetImage("resources/images/undraw_agree_g19h.png")
                 ),
                 Text("Thank you for booking with Tour Mate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,fontFamily: "Times New Roman"),),
                 SizedBox(
                   height: 10,
                 ),
                 Text("Your adventure is confirmed!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,fontFamily: "Times New Roman"),),
                 SizedBox(
                   height: 10,
                 ),
                 Text("safe travels!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,fontFamily: "Times New Roman"),),
                 SizedBox(
                   height: 10,
                 ),
                 Icon(Icons.emoji_emotions_outlined,size: 50,color: Colors.orange,)
               ],
             ),
           ),
         )
     ),
   );
  }

}