import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    void profile(){
      
    }
     return MaterialApp(
       home: Scaffold(
      body: Container(
          child: SafeArea(
            child:Column(
              children:[
                SizedBox(height: 30),
                  Container(
                       color:Colors.pink, 
                       width: 700,
                       height: 150,
                   
                    child: Text("Shopping Application",
                   style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 40,
                   fontFamily: "georgia"),
                   ),
                   
                   ),
                   SizedBox(height:10),
                TextFormField(
                  
                  decoration:InputDecoration(
                    labelText:"Enter Username"
                  )
                ),
                SizedBox(height:10),
                 TextFormField(
                
                  decoration:InputDecoration(
                    labelText:"Enter Email"
                  )
                ),
                SizedBox(height:10),
                 TextFormField(
                
                  decoration:InputDecoration(
                    labelText:"Enter City"
                  )
                ),
                SizedBox(height:10),
                   SizedBox(height:10),
                 TextFormField(
                
                  decoration:InputDecoration(
                    labelText:"Enter Your Complete Address"
                  )
                ),
                SizedBox(height:10),
                   SizedBox(height:10),
                 TextFormField(
                
                  decoration:InputDecoration(
                    labelText:"Enter Payment Detail"
                  )
                ),
                SizedBox(height:10),
              
             

                Container(color:Colors.amber,
                  child: ElevatedButton( onPressed: profile, child: Text("Register",   style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontSize: 30))),
                ),

                 SizedBox(height:10),
                
               
              ]
            )
        ),    
       )
     
    ));
  }
}