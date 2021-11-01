import 'package:flutter/material.dart';

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {

    void homePage (){
              Navigator.of(context).pushNamed("/home");

    }
    return MaterialApp(
          home: Scaffold(
                    body: Container(
                      
                       color:Colors.pink,
                      child: Column(
                       
                        children: [
                           SizedBox(height: 20),
                          Image.network("https://tse1.mm.bing.net/th?id=OIP.wn9cNmUbppVwFIHeb1hRKAHaDz&pid=Api&P=0&w=339&h=174"),
                          SizedBox(height: 20),
                          Text("Shopping Application",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          fontFamily:"georgia")),
                          
                          SizedBox(height: 20),
                          ElevatedButton(onPressed: homePage,child:Text("Let's Start Shopping"))
                        ],
                      ),
                    ),
          ),
    );
  }
}