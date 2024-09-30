// "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
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
          backgroundColor:Colors.amber,
        ),
        body:const Center(
          child:Text("app"),
        ),
      ),
    );
  }
  }
