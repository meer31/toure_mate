import 'package:flutter/material.dart';
import 'Banff.dart';
class Home extends StatefulWidget{

  @override
  State<StatefulWidget> createState() =>HomeState();
}
class HomeState extends State<Home>{

  String? banffdesc="Banff National Park is a UNESCO World Heritage Site located in the Canadian Rockies. The park is home to stunning alpine lakes, towering mountains, and diverse wildlife, making it a paradise for outdoor enthusiasts";
  String? boradesc="Bora Bora is a small island in the South Pacific known for its stunning turquoise lagoon and lush green mountains. The overwater bungalows and luxury resorts make it a popular honeymoon destination, offering a perfect blend of relaxation and adventure. ";
  String? barrierdesc="The Great Barrier Reef is the world’s largest coral reef system, stretching over 2,300 kilometers along the coast of Queensland, Australia. The reef is home to a diverse array of marine life, including colorful corals, tropical fish, sea turtles, and sharks. ";
  String? kyotedesc="Kyoto is a city in Japan known for its historic temples, traditional tea houses, and beautiful cherry blossoms. The city is a fascinating mix of old and new, with ancient shrines and gardens coexisting with modern skyscrapers and bustling shopping districts. ";
  String? machudesc="Machu Picchu is an ancient Incan citadel located in the Andes Mountains of Peru, dating back to the 15th century. The UNESCO World Heritage Site is perched on a mountain ridge overlooking the Urubamba River valley, offering breathtaking views of the surrounding peaks.";
  String? petradesc="Petra is an ancient city carved into the rose-red cliffs of southern Jordan, dating back to the 4th century BC. The UNESCO World Heritage Site is famous for its impressive rock-cut architecture, including the iconic Treasury and the Monastery";


  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Hom"),
         toolbarHeight: 100,
         centerTitle: true,
         elevation: 4.0,
         backgroundColor: Colors.white12,
         shape: const RoundedRectangleBorder(
           borderRadius: BorderRadius.vertical(
             bottom: Radius.circular(20.0)
           )
         ),
       ),
       
       body:Padding(
           padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
           child:  ListView(
             children: [
                ListTile(
                  title: Text("Welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: "Times New Roman"),),
                  subtitle: Text("Find your perfect destination",style: TextStyle(fontWeight: FontWeight.bold),),
                ),

               SizedBox(
                 height: 20,
               ),
               Card(
                 margin: EdgeInsets.all(10),
                 child:TextFormField(
                   style: TextStyle(color: Colors.orange),
                   decoration: InputDecoration(
                     labelText: "    Search",
                     suffixIcon: Icon(Icons.search_outlined,size: 30,color: Colors.orange,),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(8.0)
                     )
                   ),
                 ),
               ),
               SizedBox(
                 height: 20,
               ),
               Card(
                 elevation: 10.0,
                 shadowColor: Colors.black,
                 child: Column(
                   children: [
                     Card(
                       child:ClipRRect(
                       borderRadius: BorderRadius.circular(20),
                       child:Image(
                         image: AssetImage("resources/images/Banff National Park, Canada.jpeg"),
                         width: 400,
                         height: 250,
                         fit: BoxFit.cover,
                       ),
                       ),
                     ),
                     ListTile(
                       onTap: (){
                         Navigator.push(
                             context,
                             MaterialPageRoute(
                                 builder:(context)=>Banff("Banff National Park", banffdesc, AssetImage("resources/images/Banff National Park, Canada.jpeg",),"PKR 3000k"),
                             )
                         );
                       },
                       title: Text("Banff National Park",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       subtitle: Text("Canada",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                       trailing: Text("PKR 3000k",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                     )

                   ],
                 ),
               ),
               SizedBox(
                 height: 20.0,
               ),
               Card(
                 elevation: 10.0,
                 shadowColor: Colors.black,
                 child: Column(
                   children: [
                     Card(
                       child:ClipRRect(
                         borderRadius: BorderRadius.circular(20),
                         child:Image(
                           image: AssetImage("resources/images/Bora Bora, French Polynesia.jpeg"),
                           width: 400,
                           height: 250,
                           fit: BoxFit.cover,
                         ),
                       ),
                     ),
                     ListTile(
                       onTap: (){
                         Navigator.push(
                             context,
                           MaterialPageRoute(
                               builder: (context)=>Banff("Bora Bora", boradesc, AssetImage("resources/images/Bora Bora, French Polynesia.jpeg"),"PKR 5000k")
                           )
                         );
                       },
                       title: Text("Bora Bora",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       subtitle: Text(" French Polynesia",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                       trailing: Text("PKR 5000k",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                     )

                   ],
                 ),
               ),
               SizedBox(
                 height: 20.0,
               ),
               Card(
                 elevation: 10.0,
                 shadowColor: Colors.black,
                 child: Column(
                   children: [
                     Card(
                       child:ClipRRect(
                         borderRadius: BorderRadius.circular(20),
                         child:Image(
                           image: AssetImage("resources/images/Great Barrier Reef, Australia.jpeg"),
                           width: 400,
                           height: 250,
                           fit: BoxFit.cover,
                         ),
                       ),
                     ),
                     ListTile(
                       onTap: (){
                         Navigator.push(
                             context,
                           MaterialPageRoute(
                               builder: (context)=>Banff("Great Barrier Reef", barrierdesc, AssetImage("resources/images/Great Barrier Reef, Australia.jpeg"),"PKR 400k")
                           )
                         );
                       },
                       title: Text("Great Barrier Reef",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       subtitle: Text(" Australia",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                       trailing: Text("PKR 400k",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                     )

                   ],
                 ),
               ),
               SizedBox(
                 height: 20.0,
               ),
               Card(
                 elevation: 10.0,
                 shadowColor: Colors.black,
                 child: Column(
                   children: [
                     Card(
                       child:ClipRRect(
                         borderRadius: BorderRadius.circular(20),
                         child:Image(
                           image: AssetImage("resources/images/Kyoto, Japan.jpeg"),
                           width: 400,
                           height: 250,
                           fit: BoxFit.cover,
                         ),
                       ),
                     ),
                     ListTile(
                       onTap: (){
                         Navigator.push(
                             context,
                           MaterialPageRoute(
                               builder: (context)=>Banff("Kyoto", kyotedesc, AssetImage("resources/images/Kyoto, Japan.jpeg"),"PKR 600k")
                           )
                         );
                       },
                       title: Text("Kyoto",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                       subtitle: Text("Japan",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                       trailing: Text("PKR 600k",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                     )

                   ],
                 ),
               ),
               SizedBox(
                 height: 20.0,
               ),
               Card(
                 elevation: 10.0,
                 shadowColor: Colors.black,
                 child:Column(
                   children: [
                     Card(
                       child: ClipRRect(
                 child: Image(
                     image: AssetImage("resources/images/Machu Picchu, Peru.jpeg"),
                     height:250,
                     width: 400,
                     fit: BoxFit.cover,
               ),
               borderRadius: BorderRadius.circular(20.0),
       ),
     ),
            ListTile(
              onTap: (){
                Navigator.push(
                    context,
                  MaterialPageRoute(
                      builder:(context)=>Banff("Machu Picchu", machudesc,  AssetImage("resources/images/Machu Picchu, Peru.jpeg"),"PKR 400k")

                  )
                );
              },
                title: Text("Machu Picchu",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                subtitle: Text("Peru",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                trailing: Text("PKR 400k",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ),
                         ],
                       ) ,
               ),
               SizedBox(
                 height: 20.0,
               ),
               Card(
                 elevation: 10.0,
                 shadowColor: Colors.black,
                 child: Column(
                   children: [
                     Card(
                       child: ClipRRect(
                         child: Image(
                             image: AssetImage("resources/images/Petra, Jordan.jpeg"),
                             height: 250,
                             width: 400,
                           fit: BoxFit.cover,
                         ),
                         borderRadius: BorderRadius.circular(20.0),
                       ),
                     ),
                     ListTile(
                       onTap: (){
                         Navigator.push(
                             context,
                           MaterialPageRoute(
                               builder: (context)=>Banff("Petra", petradesc, AssetImage("resources/images/Petra, Jordan.jpeg"),"PKR 200k")
                           )
                         );
                       },
                       title: Text("Petra",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                       subtitle: Text("Jordan",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                       trailing: Text("PKR 200k",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                     )
                   ],
                 ),
               )
             ],
           ),
       ),
       drawer: Drawer(
         backgroundColor: Colors.white,
          child: ListView(
            children: [
              CircleAvatar(
                radius: 70,
                child: Image(
                    image:AssetImage("resources/images/undraw_pic-profile_nr49.png")
                ),
              ),
              Divider(
                height: 50,
              ),
              
             Card(
               elevation: 4.0,
               shadowColor: Colors.black,
               child:  ListTile(
                 leading: Icon(Icons.home,size: 25,),
                 title: Text("Home",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
               ),
             ),
              Divider(
                height: 30,
              ),
              Card(
                elevation: 4.0,
                shadowColor: Colors.black,
                child:  ListTile(
                  leading: Icon(Icons.arrow_forward_ios_rounded,size: 25,),
                  title: Text("About",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              )


            ],
          ),
       ),
     );


  }

}
