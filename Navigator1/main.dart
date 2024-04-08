import 'package:flutter/material.dart';
import './pages/screen1.dart';
import './pages/screen2.dart';
void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Navigation Demo',
    //  home: ScreenOne(),
    initialRoute: '/',
    routes:{
      '/':(context) => ScreenOne(),
      '/screentwo':(context) => ScreenTwo()
    }

   );
 }
}
