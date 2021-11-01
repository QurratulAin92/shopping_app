import 'package:flutter/material.dart';

class Register extends StatefulWidget {

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {

          final TextEditingController usernameController = TextEditingController();
        final TextEditingController emailController = TextEditingController();
        final TextEditingController passwordController = TextEditingController();
   
    void register(){
        final String username = usernameController.text;
        final String email = emailController.text;
        final String password = passwordController.text;
          showDialog(context: context, builder:(BuildContext context){
         return AlertDialog(content: Text("Congratulation! You Are Registered Now"),);}
      
        
          );
           Navigator.of(context).pushNamed("/home");}
    return MaterialApp(
       home: Scaffold(
      body: Container(
          color:Colors.pink,
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
                  controller: usernameController,
                  decoration:InputDecoration(
                    labelText:"Enter Username"
                  )
                ),
                SizedBox(height:10),
                 TextFormField(
                  controller: emailController,
                  decoration:InputDecoration(
                    labelText:"Enter Email"
                  )
                ),
                SizedBox(height:10),
                 TextFormField(
                  controller: passwordController,
                  decoration:InputDecoration(
                    labelText:"Enter Password"
                  )
                ),
                SizedBox(height:10),
              
             

                Container(color:Colors.amber,
                  child: ElevatedButton( onPressed: register, child: Text("Register",   style: TextStyle(
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