import 'package:flutter/material.dart';
import 'BankPay.dart';
import 'Confirmed.dart';
class Pin extends StatefulWidget{
  
  String? tital;
  Pin(this.tital);
  @override
  State<Pin> createState() =>PinState();

}
class PinState extends State<Pin>{
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
                    builder: (context)=>Bankpay(widget.tital!)
                )
              );
            },
            icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)
        ),
        title: Text(""+widget.tital!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        toolbarHeight: 100,
        elevation: 4.0,
        shadowColor: Colors.white12,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30)
          )
        ),
      ),
      body: Padding(
          padding:EdgeInsets.all(20),
          child: Center(
            child: Form(
                child: TextFormField(
                  keyboardType: TextInputType.numberWithOptions(),
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    hintText: "Enter your Pin ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))
                    )

                  ),

                )
            ),
          ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Container(
            height: 80,
            width: 100,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
                backgroundColor:WidgetStatePropertyAll(Colors.orange),
                shadowColor:WidgetStatePropertyAll(Colors.white12),

              ),
              onPressed: (){
                Navigator.pushReplacement(
                    context,
                  MaterialPageRoute(
                      builder: (context)=>Confirmed()
                  )
                );
              },
              child: Text("Confirm",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.white),),

            ),
          ),

      ),

    );
  }

}