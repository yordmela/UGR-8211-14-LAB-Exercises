import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Third extends StatelessWidget{
  const Third({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
       backgroundColor: Colors.blue,
      appBar: AppBar(
      backgroundColor: Colors.purple,
      title: Text("BMI CALCULATOR",
      
      ),
      centerTitle: true,
      
      ),
     
      body:Container(
        child:Column(
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
           
           Container(
                width: 150,
                height: 150,
                color: Colors.black,
                child: Center(
                  child: Icon(Icons.female_outlined, size: 100.0,color:Colors.white)
                ),
              ),

            Container(
                width: 150,
                height: 150,
                color: Colors.black,
                child: Center(
                  child: Icon(Icons.male_outlined, size: 100.0,color:Colors.white)
                ),
              ),
          ],),

          SizedBox(height: 100.0,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
           
           Container(
                width: 300,
                height: 150,
                color: Colors.black,
                child: Center(
                  child: Icon(Icons.female_outlined, size: 100.0,color:Colors.white)
                ),
              ),

            
          ],),
           Text("a")
        ])
      ),

      bottomNavigationBar: BottomAppBar(
        
        child:ElevatedButton(onPressed: () {
  
        }, child:Text("CALCULATE"),)),
    );
  }
}
