import 'package:flutter/material.dart';
import 'BookNow.dart';
import 'Confirmed.dart';
import 'Pin.dart';
class Bankpay extends StatefulWidget{
 String? price;
  String? tital;
  Bankpay(this.tital,[this.price = "0.0"]);
  @override
  State<Bankpay> createState() =>BankpayState();
}
class BankpayState extends State<Bankpay>{

  TextEditingController _controller1=TextEditingController();
  TextEditingController _controller2=TextEditingController();

  GlobalKey<FormState> _globlekey=GlobalKey();

  String?  _validateCardNumber(String? value){
    return value!.isEmpty?' Please Enter Number !':null;
  }
  String? _validateCNIC(String? value){
    return value!.isEmpty?'Please Enter CNIC ! ':null;
  }
  void _payNow(){
    if(_globlekey.currentState!.validate()){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context)=>Pin(widget.tital!)
          )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: (){
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context)=>Payment(widget.price!)
                )
            );
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded)
      ),
      title: Text(""+widget.tital!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      centerTitle: true,
      elevation: 4.0,
      toolbarHeight: 100,
      shadowColor: Colors.white12,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20)
        ),
      ),
    ),
    body: Padding(
        padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Form(
            key: _globlekey,
              child:Column(
                children: [
                  TextFormField(
                    controller: _controller1,
                    validator: (value)=>_validateCardNumber(value),
                    style: TextStyle(fontSize: 15),
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: InputDecoration(
                        labelText: "Card Number",
                        suffixIcon: Icon(Icons.question_mark_rounded,size: 20,),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                        )

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _controller2,
                    validator: (value)=>_validateCNIC(value),
                    style: TextStyle(fontSize: 15),
                    maxLength: 14,
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: InputDecoration(
                        labelText: "CNIC Number",
                        suffixIcon: Icon(Icons.question_mark_rounded,size: 20,),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                        )

                    ),
                  )
                ],
              )
          )

        ],
      ),
    ),

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