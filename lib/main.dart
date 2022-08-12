import 'package:flutter/material.dart';
import 'package:interview_practice/pages/home.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  MyApp({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(home: App(),);
  }
}

