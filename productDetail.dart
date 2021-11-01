import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    
         void add (){
                showDialog(context: context, builder:(BuildContext context){
         return AlertDialog(content: Text("Please Register Yourself"),);});

    }
    return MaterialApp(
      home:Scaffold(
        body:SingleChildScrollView(
         child:ListView(
             physics: NeverScrollableScrollPhysics(),
               shrinkWrap: true,
               children:[
                 SizedBox(height: 30),
                  Container(
                        color: Colors.pink,
                 width: 700,
                 height: 150,
                 child: Text("Shopping Application",
                 style: TextStyle(
                 color: Colors.white,
                 fontFamily: "georgia",
                 fontWeight: FontWeight.bold,
                 fontSize: 40),),
                 
                 ),
                 Column(
                   children: [
                     Container(
                       margin: EdgeInsets.only(top:10),
                       color:Colors.grey,
                       height:200,
                       child:Image.network("https://tse4.mm.bing.net/th?id=OIP.DLPN-7eCy2KZKQcNG0jvAQHaEU&pid=Api&P=0&w=286&h=167")
                     ),
                     Text("Cars"),
                     Text("Real Price 500000"),
                     Text("Discounted Price 490000"),
                     ElevatedButton(onPressed: add,child: Text("Add to Cart")),
                   ],
                 ),
                  Column(
                    children: [
                      Container(
                       margin: EdgeInsets.only(top:10),
                       color:Colors.grey,
                       height:200,
                       child:Image.network("https://tse2.mm.bing.net/th?id=OIP.9UvVtP9f8lInT2wxAFEtwgHaDC&pid=Api&P=0&w=385&h=157")
                       
                 ),
                 Text("laptop"),
                  Text("Real Price 50000"),
                  Text("Discounted Price 49000"),
                  ElevatedButton(onPressed: add,child: Text("Add to Cart")),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                       margin: EdgeInsets.only(top:10),
                       color:Colors.grey,
                       height:200,
                       child: Image.network("https://tse3.mm.bing.net/th?id=OIP.F6ZmkXKokKRiN5KeGv9YdQHaF3&pid=Api&P=0&w=194&h=153"),
                 ),
                 Text("Camera"),
                  Text("Real Price 500000"),
                  Text("Discounted Price 490000"),
                  ElevatedButton(onPressed: add,child: Text("Add to Cart")),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                       margin: EdgeInsets.only(top:10),
                       color:Colors.grey,
                       height:200,
                       child: Image.network("https://tse2.mm.bing.net/th?id=OIP.o-Lywolp9ITTVT-Lwa1O5gHaDd&pid=Api&P=0&w=349&h=163"),
                 ),
                 Text("Machine"),
                  Text("Real Price 500000"),
                     Text("Discounted Price 490000"),
                      ElevatedButton(onPressed: add,child: Text("Add to Cart")),
                    ],
                  ),
               ]
             )
         )
        )
      );
    
  }
}