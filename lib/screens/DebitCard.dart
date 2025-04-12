import 'package:flutter/material.dart';
import 'Confirmed.dart';
import 'BookNow.dart';
import 'Pin.dart';
class Debitcard extends StatefulWidget{
  String? title;
  String? price;
  Debitcard(this.title,[this.price = "0.0"]);

  @override
  State<StatefulWidget> createState() =>DebitcardState();
}
class DebitcardState extends State<Debitcard>{

  GlobalKey<FormState> _globalKey=GlobalKey();

  String? _validateCardNumber(String? value){
    return value!.isEmpty?'Please Enter Number!':null;
  }

  String? _validateExpiry(String? value){
    return value!.isEmpty?'Please Enter Date !':null;
  }

  String? _validateCVV(String? value){
    return value!.isEmpty?'Please EnterCVV !':null;
  }
  String? _validateName(String? value){
    return value!.isEmpty?'Please Enter name !':null;
  }
  void _payNow(){
    if(_globalKey.currentState!.validate()){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context)=>Pin(widget.title!)
          )
      );
    }
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       leading: IconButton(
           onPressed: (){
             Navigator.pushReplacement(
                 context,
                 MaterialPageRoute(
                     builder:(context)=>Payment(widget.price!)
                 )
             );
           },
           icon: Icon(Icons.arrow_back_ios,size: 20,)
       ),
       title: Text(""+widget.title!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
       centerTitle: true,
       elevation: 4.0,
       toolbarHeight: 100,
       shadowColor: Colors.white12,
       shape: const RoundedRectangleBorder(
         borderRadius: BorderRadius.vertical(
           bottom: Radius.circular(20)
         )
       ),
     ),
     body: SafeArea(
         child: SingleChildScrollView(
           child: Padding(
               padding: EdgeInsets.all(20),
             child: Column(
               children: [
                 SizedBox(
                   height: 20,
                 ),
                 Form(
                   key: _globalKey,
                     child: Column(
                       children: [
                         TextFormField(
                           validator: (value)=>_validateCardNumber(value),
                           keyboardType: TextInputType.number,
                           style: TextStyle(fontSize: 15),
                           decoration: InputDecoration(
                               suffixIcon: Icon(Icons.question_mark,size: 20),
                               hintText: "Card Number",
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.all(Radius.circular(10))
                               )
                           ),
                         ),

                         SizedBox(
                           height: 10,
                         ),
                         TextFormField(
                           validator: (value)=>_validateExpiry(value),
                           keyboardType: TextInputType.number,
                           style: TextStyle(fontSize: 15),
                           decoration: InputDecoration(
                               suffixIcon: Icon(Icons.question_mark,size: 20),
                               hintText: "Expiry (MM/YY)",
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.all(Radius.circular(10))
                               )
                           ),
                         ),
                         SizedBox(
                           height: 10,
                         ),
                         TextFormField(
                           validator: (value)=>_validateCVV(value),
                           keyboardType: TextInputType.number,
                           style: TextStyle(fontSize: 15),
                           decoration: InputDecoration(
                               suffixIcon: Icon(Icons.question_mark,size: 20),
                               hintText: "CVV",
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.all(Radius.circular(10))
                               )
                           ),
                         ),
                         SizedBox(
                           height: 10,
                         ),
                         TextFormField(
                           validator: (value)=>_validateName(value),
                           keyboardType: TextInputType.number,
                           style: TextStyle(fontSize: 15),
                           decoration: InputDecoration(
                               hintText: "Name On Card",
                               suffixIcon: Icon(Icons.question_mark_rounded,size: 20,),
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.all(Radius.circular(10))
                               )
                           ),
                         ),
                       ],
                     )
                 )

               ],
             ),
           )
         ),
     ),
     backgroundColor: Colors.white,
     bottomNavigationBar: BottomAppBar(
       child: Container(
         height: 100,
         width: 100,
         color: Colors.white,
         child: ElevatedButton(
           style: ButtonStyle(
                 shadowColor: WidgetStatePropertyAll(Colors.black),
                 elevation: WidgetStatePropertyAll(5.0),
                 backgroundColor: WidgetStatePropertyAll(Colors.orange),
                 shape: MaterialStateProperty.all(
                     RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10.0)
                     )
                 )
           ),
             onPressed: _payNow,
             child: Text("Pay Now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)
         ),
       ),
     ),
   );
  }
  
}