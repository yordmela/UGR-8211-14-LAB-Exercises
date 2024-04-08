import 'package:flutter/material.dart';
import 'package:flutter_application_exercise2/pages/screen2.dart';

class ScreenOne extends StatelessWidget {
 @override

 Widget build(BuildContext context) {
 
  

   return Scaffold(
     appBar: AppBar(
      title:Text("Screen One"),
      backgroundColor: Color.fromARGB(255, 134, 128, 76),
     ),
     body:Center(
      child: ElevatedButton(
        
        
        child: Text("next page"), 
        onPressed: () async{
    //     final result = await Navigator.push(
    //   context,
    //   MaterialPageRoute (builder: (context) =>  ScreenTwo()),
    // );
  
        // Navigator.push(
        //   context,MaterialPageRoute(builder: (BuildContext context) => ScreenTwo(),
        //   settings: const RouteSettings(arguments: "this is from page 1")
        //   )
        // );

         Navigator.pushNamed(context, '/screentwo');
      },) ,)
    
   );
 }
}