import 'package:flutter/material.dart';
import 'home.dart';
import 'DebitCard.dart';
import 'BankPay.dart';
class Payment extends StatefulWidget {
  String? price;
  Payment(this.price );
  @override
  State<Payment> createState() => PaymentState();
}

class PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 4.0,
        backgroundColor: Colors.white12,
        title: Text("Payment Methods",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        centerTitle: true,
        toolbarHeight: 100,
        shadowColor: Colors.white12,
        leading: IconButton(
            onPressed: (){
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context)=>Home()
                  )
              );
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0))),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Card(
              elevation: 4.0,
              shadowColor: Colors.black,
              child: ListTile(
                onTap: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>Debitcard( "Credit/Debit Card")
                      )
                  );
                },
                title: Text(
                  "Credit/Debit Card",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Credit/Debit Card",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("resources/images/DebitLogo.jpeg"),
                ),
                trailing: IconButton(
                    iconSize: 20,
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context)=>Debitcard( "Credit/Debit Card")
                          )
                      );
                    },
                    icon: Icon(Icons.arrow_forward_ios_rounded)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              elevation: 4.0,
              shadowColor: Colors.black,
              child: ListTile(
                onTap: (){
                  Navigator.pushReplacement(
                      context,
                    MaterialPageRoute(
                        builder: (context)=>Bankpay("HBL Bank Account")
                    )
                  );
                },
                title: Text("HBL Bank Account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("resources/images/HBLbankLogo.jpeg"),

                ),
                trailing: IconButton(
                  iconSize: 20,
                    onPressed: (){
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context)=>Bankpay("HBL Bank Account")
                          )
                      );
                    },
                    icon: Icon(Icons.arrow_forward_ios_rounded)
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              elevation: 4.0,
              shadowColor: Colors.black,
              child: ListTile(
                onTap: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>Bankpay("Mezan Bank Account")
                      )
                  );
                },
                title: Text("Mezan Bank Account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("resources/images/MezanLogo.jpeg"),
                ),
                trailing: IconButton(
                  iconSize: 20,
                    onPressed: (){
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context)=>Bankpay("Mezan Bank Account")
                          )
                      );
                    },
                    icon: Icon(Icons.arrow_forward_ios_rounded)
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          height: 150,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                boxShadow: [BoxShadow(color: Colors.white12)]),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Subtotal                     " +
                          widget.price!,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Total            " + widget.price!,
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
