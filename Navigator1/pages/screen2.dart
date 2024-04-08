import 'package:flutter/material.dart';



class ScreenTwo extends StatelessWidget {
 @override

 Widget build(BuildContext context) {
  // final text= ModalRoute.of(context)!.settings.arguments as String;

   return Scaffold(
     appBar: AppBar(
      title:Text("Screen Two"),
      backgroundColor: Color.fromARGB(255, 121, 119, 102),
     ),
      body:Center(
        
      child: ElevatedButton(child: Text('back to page1'), onPressed: (){
        //  Navigator.pop(
        //   context, 'yes'
        // );

         Navigator.pushNamed(context, '/');
      },
) ,)
   );
 }
}