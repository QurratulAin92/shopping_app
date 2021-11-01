
import 'package:final_application/cards.dart';
import 'package:final_application/home.dart';
import 'package:final_application/mainPage.dart';
import 'package:final_application/productDetail.dart';
import 'package:final_application/profile.dart';
import 'package:final_application/register.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home:FrontPage(),
       routes: {
           "/register":(context) => Register(),
           "/cards":(context) => Cards(),
             "/frontPage":(context) => FrontPage(),
             "/detail":(context) => Detail(),
             "/profile":(context) => Profile(),
             "/home":(context) => Home(),
          
         },
     
    );
  }
}
