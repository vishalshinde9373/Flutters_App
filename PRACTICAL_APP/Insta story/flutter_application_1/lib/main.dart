import "dart:ui";

import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
    Widget build(BuildContext context){
      return const MaterialApp(
        debugShowCheckedModeBanner:false,
        home:InstaStory(),
      );
    }
  }
  class InstaStory extends StatelessWidget{
    const InstaStory({super.key});
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar:AppBar(
          title:const Text("Insta Story",
          style:TextStyle(
            fontSize:28,
            fontWeight:FontWeight.w700,

          ),
          ),
        ),
        body:SingleChildScrollView(
          scrollDirection:Axis.horizontal,
          child:Row(
            children:[
              Container(
              height:100,
              width:100,
              decoration:const BoxDecoration(
                color:Colors.blue,
                shape:BoxShape.circle,
              ), 

              ),
               Container(
              height:100,
              width:100,
              decoration:const BoxDecoration(
                color:Colors.blue,
                shape:BoxShape.circle,
              ), 

              ),
               Container(
              height:100,
              width:100,
              decoration:const BoxDecoration(
                color:Colors.blue,
                shape:BoxShape.circle,
              ), 

              ),
               Container(
              height:100,
              width:100,
              decoration:const BoxDecoration(
                color:Colors.blue,
                shape:BoxShape.circle,
              ), 

               ),
            ],
          ),
        ),
      );
    }
  }
