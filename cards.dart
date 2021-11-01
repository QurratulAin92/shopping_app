import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
   
  List<dynamic> list = [1,2,3,4,5,6,7,8];
  List<dynamic> img = ["https://tse4.mm.bing.net/th?id=OIP.DLPN-7eCy2KZKQcNG0jvAQHaEU&pid=Api&P=0&w=286&h=167","https://tse4.mm.bing.net/th?id=OIP.4MNYhiLAFAu4qonYR_KwnwHaE8&pid=Api&P=0&w=293&h=195","https://tse3.mm.bing.net/th?id=OIP.3v1vO9oRTA8JGLKBQmUtFwHaE8&pid=Api&P=0&w=301&h=201","https://tse2.mm.bing.net/th?id=OIP.sxXX1iV2SjI1xhrE_dmgMgHaFL&pid=Api&P=0&w=266&h=186"];
  List<dynamic> title = ["Rate 400000","Rate 500000","Rate 600000","Rate 500000"];

  List<dynamic> mobImg = ["https://tse2.mm.bing.net/th?id=OIP.9UvVtP9f8lInT2wxAFEtwgHaDC&pid=Api&P=0&w=385&h=157","https://tse3.mm.bing.net/th?id=OIP.F6ZmkXKokKRiN5KeGv9YdQHaF3&pid=Api&P=0&w=194&h=153","https://tse2.mm.bing.net/th?id=OIP.yfepGHK-W5FeiLBcEkZCDQHaEK&pid=Api&P=0&w=280&h=157","https://tse2.mm.bing.net/th?id=OIP.m1VLIZ8glIX4JMPcxTKLAgHaE7&pid=Api&P=0&w=242&h=161"];
  List<dynamic> name = ["Laptop","Camera","Mobile","Mobile"];
  List<dynamic> mobRate = ["Rate 40000","Rate 30000","Rate 60000","Rate 80000"];

  List<dynamic> itemImg = ["https://tse2.mm.bing.net/th?id=OIP.2v4dpOfNavYWjSV69TpkrQHaFj&pid=Api&P=0&w=224&h=168","https://tse2.mm.bing.net/th?id=OIP.o-Lywolp9ITTVT-Lwa1O5gHaDd&pid=Api&P=0&w=349&h=163","https://tse4.mm.bing.net/th?id=OIP.NFk2rULwG0bEyothagpVIAHaGD&pid=Api&P=0&w=188&h=154","https://tse2.mm.bing.net/th?id=OIP.H6SNxZqGNJZjzUUNMVWF7AHaHa&pid=Api&P=0&w=159&h=159"];
  List<dynamic> itemName = ["machine","fridge","Air Conditioner","Deep freezer"];
  List<dynamic> itemRate = ["Rate 40000","Rate 30000","Rate 60000","Rate 80000"];
   @override
  Widget build(BuildContext context) {

        void detail (){
              Navigator.of(context).pushNamed("/detail");

    }

         void add (){
                showDialog(context: context, builder:(BuildContext context){
         return AlertDialog(content: Text("Please Register Yourself"),);});

    }
    return MaterialApp(
     home: Scaffold(
       body: SingleChildScrollView(
         child: Column(
           
           children:[
           ListView(children:[
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
               fontFamily: "georgia")
               
               ,)),
         
            
         Text("Product:1 Cars"),       
         Flexible(
                    child: GridView.count(
             physics: NeverScrollableScrollPhysics(),
             
           shrinkWrap: true,
           crossAxisCount: 2,
           crossAxisSpacing: 20,
           mainAxisSpacing: 20,
           children: List.generate(img.length, (index) {
             return Column(
               
               children: [Image.network(img[index]),Text(title[index]),ElevatedButton(onPressed: detail,child: Text("Items Cart"),),ElevatedButton(onPressed: add,child: Text("Add to Cart"),)
             ]);
           })
       ),
         ),

             Text("Product:2 Mobiles & laptops"),       
         Flexible(
         
                    child: GridView.count(
             physics: NeverScrollableScrollPhysics(),
           shrinkWrap: true,
           crossAxisCount: 2,
           crossAxisSpacing: 20,
           mainAxisSpacing: 20,
           children: List.generate(img.length, (index) {
             return Column(
               
               children: [Image.network(mobImg[index]),Text(name[index]),Text(mobRate[index]),ElevatedButton(onPressed:detail,child: Text("Items Detail")),ElevatedButton(onPressed: add,child: Text("Add to Cart")),]);
           })
       ),
         ),

             Text("Product:3 Electronic Appliances"),       
         Flexible(
        
                    child: GridView.count(
             physics: NeverScrollableScrollPhysics(),
           shrinkWrap: true,
           crossAxisCount: 2,
           crossAxisSpacing: 20,
           mainAxisSpacing: 20,
           children: List.generate(img.length, (index) {
             return Column(
               
               children: [Image.network(itemImg[index]),Text(itemName[index]),Text(itemRate[index]),ElevatedButton(onPressed: detail,child:Text("Items Detail")),ElevatedButton(onPressed: add,child:Text("Add To Cart"))]
           );})
       ),
         )
             ]
         )
           ])
    )));
  }
}
