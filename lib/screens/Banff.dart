import 'package:flutter/material.dart';
import 'home.dart';
import 'BookNow.dart';
class Banff extends StatefulWidget{

  String? tital;
  String? descrip;
  AssetImage _image;
  String? price;
  Banff(
      this.tital,
      this.descrip,
      this._image,
      this.price
      );
  @override
  State<StatefulWidget> createState() =>BanffState();
}
class BanffState extends State<Banff>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Stack(
          children: [
            ClipRRect(
              child: Image(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 480,
                  image: widget._image
              ),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(60.0)
              ),
            ),
            Positioned(
              top: 40,
                left: 10,
                child: IconButton(
                  iconSize: 25,
                    color: Colors.black,
                    onPressed: (){
                       Navigator.push(
                           context,
                          MaterialPageRoute(
                              builder: (context)=>Home(),
                          )
                       );
                    },
                    icon: Icon(Icons.arrow_back_ios_new_rounded)
                )
            )
          ],
        ),
        // flexibleSpace: Image.asset(
        //     "resources/images/Banff National Park, Canada.jpeg",
        //    fit: BoxFit.cover,
        //   height: 500,
        // ),
        elevation: 10.0,
        toolbarHeight: 450,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20)
          )
        ),
      ),
      body:SafeArea(
          child:SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child:  Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.0),
                    child: Text(widget.tital!,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: "Times New Roman"),),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10,top: 5),
                        child: Text(widget.descrip!,style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                        ),),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          shadowColor: WidgetStatePropertyAll(Colors.black),
                          elevation: WidgetStatePropertyAll(5.0),
                          backgroundColor: WidgetStatePropertyAll(Colors.orange),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              )
                          )
                      ),
                      onPressed: (){
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context)=>Payment(widget.price!),
                            )
                        );
                      },
                      child: Text("Book Now",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),)
                  )
                ],
              ),
            )
            ,
          )
      )
    );
  }

}