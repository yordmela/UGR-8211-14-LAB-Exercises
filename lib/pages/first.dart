

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class First extends StatelessWidget{
  const First({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
      leading:IconButton(icon:Icon(Icons.arrow_back),onPressed: (){}),
      actions:[
       
        IconButton(icon:Icon(Icons.upload_file),onPressed: (){}),
        IconButton(icon:Icon(Icons.settings),onPressed: (){}),
      ]
      ),
      body: Container(
        padding:EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
        child:Column(
          children: [
            Image.asset("lib/assets/car.webp",
            ), 
       SizedBox(height: 20.0,),
            Text("1975 Porsche 911 Carrera", 
            style: TextStyle(
              fontSize: 29.0,
              fontWeight: FontWeight.bold
            ),
            
            ),
SizedBox(height: 20.0,),
            Row
            (
              children: [
              
              
               Icon(Icons.thumb_up_sharp), // Icon
                  SizedBox(width: 5), // Space between icon and text
                  Text('0',
                  style:TextStyle(
                    fontSize: 25.0
                  )),

                SizedBox(width: 50.0),

                 Icon(Icons.message), // Icon
                  SizedBox(width: 5), // Space between icon and text
                  Text('0',
                  style:TextStyle(
                    fontSize: 25.0
                  )
                  ),
SizedBox(width: 50.0),
                   Icon(Icons.share), // Icon
                  SizedBox(width: 5), // Space between icon and text
                  Text('Share',
                  style:TextStyle(
                    fontSize: 25.0
                  )
                  ),


            ],),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Essential Information"),
              Text("1 of 3 done",
              style:TextStyle(color:Colors.grey)
              )
            ],
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.verified),
              
              title: Text('Notifications', 
              style: TextStyle(
                fontSize: 20.0,
               ),
            
              ),
              subtitle: Text("Year:1975"),
              
            
              
            ),
            ListTile(
              leading: Icon(Icons.verified),
              
              title: Text('Notifications')
            ),
             ListTile(
              leading: Icon(Icons.verified),
              
              title: Text('Notifications')
            ),
          ],)
      )
    );
  }
}