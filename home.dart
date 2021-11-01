import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
       void profile (){
              Navigator.of(context).pushNamed("/profile");

    }
       void cards (){
              Navigator.of(context).pushNamed("/cards");

    }
       void register (){
              Navigator.of(context).pushNamed("/register");

    }
        void detail (){
              Navigator.of(context).pushNamed("/detail");

    }
    return MaterialApp(
      home: SingleChildScrollView(
              child: Container(
          color:Colors.grey[300],
          child: Column(
              
              
              children:[
                SizedBox(height: 20),
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
             SizedBox(height: 20),
             Text("We Have All Kinds of Laptops & Mobiles, Different Models Of Cars, and All Electric Appliances",
             style: TextStyle(color: Colors.pink,fontSize: 20,fontFamily: "georgia",)
             ),
            SizedBox(height: 20),
                Container(width:500,child: ElevatedButton(onPressed: register,child: Text("Click here for Signup"),)),
                Container(width:500,child: ElevatedButton(onPressed: cards,child: Text("See categories"))),
                Container(width:500,child: ElevatedButton(onPressed: detail,child: Text("See Product Detail"))),
                 Container(width:500,child: ElevatedButton(onPressed: profile,child: Text("Profile"))),
                 Container(
                         margin: EdgeInsets.only(top:10),
                         color:Colors.grey,
                         height:200,
                         child:Image.network("https://tse4.mm.bing.net/th?id=OIP.DLPN-7eCy2KZKQcNG0jvAQHaEU&pid=Api&P=0&w=286&h=167")
                       ),
                  Container(
                         margin: EdgeInsets.only(top:10),
                         color:Colors.grey,
                         height:200,
                         child:Image.network("https://tse2.mm.bing.net/th?id=OIP.9UvVtP9f8lInT2wxAFEtwgHaDC&pid=Api&P=0&w=385&h=157")
                         
                   ),
                   Container(
                         margin: EdgeInsets.only(top:10),
                         color:Colors.grey,
                         height:200,
                         child: Image.network("https://tse3.mm.bing.net/th?id=OIP.F6ZmkXKokKRiN5KeGv9YdQHaF3&pid=Api&P=0&w=194&h=153"),
                   )
                
              ]),
        ),
      )
      );
  
  }
}