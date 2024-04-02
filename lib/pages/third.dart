import 'package:flutter/cupertino.dart';
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
          SizedBox(height: 50,),
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
                  child:Column(
                  children: [
                    Text(
                  '174', // Value displayed on the slider
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
                    Slider(
                  value: 174, // Initial value of the slider

                  min: 0,
                  max: 200,
                  onChanged: (value) {
                    // Handle slider value change here
                  },
                  
                ),])
              
                
                ),
              ),

            
          ],),
          SizedBox(height: 80,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
           
           Container(
                width: 150,
                height: 150,
                color: Colors.black,
                child: Center(
                  child:Column(
                  children:[Text('Weight', style:TextStyle(color: Colors.white)),Text("23",style: TextStyle(fontSize: 60, color:Colors.white),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ Icon(Icons.plus_one_rounded, color: Colors.white,), Icon(Icons.plus_one_rounded, color: Colors.white,), ],)
                 
                  ])
                ),
              ),

            Container(
                width: 150,
                height: 150,
                color: Colors.black,
                child: Center(
                  child:Column(
                  children:[Text('Weight', style:TextStyle(color: Colors.white)),Text("23",style: TextStyle(fontSize: 60, color:Colors.white),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ Icon(Icons.plus_one_rounded, color: Colors.white,), Icon(Icons.plus_one_rounded, color: Colors.white,), ],)
                 
                  ])
                ),
              ),
          ],),

        ])
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        child: Container(child: Center(child:Text('calculate',style: TextStyle(color: Colors.white,fontSize: 30),),))
      ),
    );
  }
}
