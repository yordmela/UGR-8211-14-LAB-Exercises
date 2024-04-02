import 'package:flutter/material.dart';

class Second extends StatelessWidget{
  const Second({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 214, 214),
      appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 218, 214, 214),
      leading:IconButton(icon:Icon(Icons.arrow_back),onPressed: (){}),
      title: Text("Cart",
      style: TextStyle(
        color: Colors.orange
      ),
      ),
      centerTitle: true,
      ),
      body:Container(
         padding:EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
        child: Column(
        
       
         children:[Row(children: [
          Icon(Icons.shopping_cart,),
          SizedBox(width:50.0),
          Text("Shopping Cart",
          style: TextStyle(
            fontSize: 20.0
          ),
          )
         ],),
         Text("verify your quantity and click checkout",
         style: TextStyle(
            color:Colors.grey
          ),
         ),
         SizedBox(height:50.0),
          ListTile(
              leading: Image.asset("lib/assets/car.webp",),
              title: Row(children: [
                Column(
                  children: [
                    Text("Calas"),
                    Text("15.00")
                  ],
                ),
                SizedBox(width: 150.0,),
                Column(
                  children: [
                    Icon(Icons.add_circle_outline_sharp),
                    Text("1.0"),
                    Icon(Icons.add_circle_outline_sharp),
                  ],
                )
              ],)
            ),
SizedBox(width:100),
            ListTile(
              leading: Image.asset("lib/assets/car.webp",),
              title: Row(children: [
                Column(
                  children: [
                    Text("Calas"),
                    Text("15.00")
                  ],
                ),
                SizedBox(width: 150.0,),
                Column(
                  children: [
                    Icon(Icons.add_circle_outline_sharp),
                    Text("1.0"),
                    Icon(Icons.add_circle_outline_sharp),
                  ],
                )
              ],)
            ),
         ],
         
        
          ),
      ),
      bottomNavigationBar:BottomAppBar(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
       Text("subtotal"),
            Text("60.79")
            ],),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
       Text("subtotal"),
            Text("60.79")
            ],),
ElevatedButton(onPressed: (){}, child: Text("checkout"),)
        
           
          ],)
      ) ,
    );
  }
}