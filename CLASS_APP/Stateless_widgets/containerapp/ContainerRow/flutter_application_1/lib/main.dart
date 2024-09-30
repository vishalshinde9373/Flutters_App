//import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter/widgets.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text("appbar"),
          centerTitle:true,
          backgroundColor:Colors.blue,
        ),
        body:Center(
          child:Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children:[
              Container(
                width:100,
                height:100,
                color:Colors.amber,

              ),
              Container(
                width:100,
                height:100,
                color:Colors.red,

              ),
              Container(
                width:100,
                height:100,
                color:Colors.green,

              ),

            ]
          ),

        ),
      ),
    );
  }
  }
