import 'dart:async';
import 'home.dart';
import 'package:flutter/material.dart';
class Splash extends StatefulWidget{
  
  @override
  State<Splash> createState() =>SplashState();
}

class SplashState extends State<Splash> {

  void getStarted(BuildContext context){
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context)=>Home()
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Stack(
        children: [
          Image(
              fit: BoxFit.cover,
              height: double.infinity,
              image: AssetImage("resources/images/Santorini, Greece.jpeg")
          ),
          Positioned(
              bottom: 100.0,
              left: 80.0,
              right: 80.0,
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  color: Colors.white10

                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)
                    )

                  ),
                    onPressed: ()=>getStarted(context),
                    child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: "Arial",fontWeight: FontWeight.bold),)
                ),
              ),
          ),
          Positioned(
            top: 200,
              left: 120,
              right: 120,
              child: Text("Explore ",style: TextStyle(color: Colors.black,fontFamily: "Times New Roman",fontSize: 40,fontWeight: FontWeight.bold),)

          ),
          Positioned(
              top: 270,
              left: 50,
              right: 50,
              child: Text("Exciting Places ",style: TextStyle(color: Colors.black,fontFamily: "Times New Roman",fontSize: 40,fontWeight: FontWeight.bold),)

          ),
        ],
      )
    );
  }
}