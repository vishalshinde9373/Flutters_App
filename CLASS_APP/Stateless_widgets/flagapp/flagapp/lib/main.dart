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
          title:const Text("Indain Flag"),
          centerTitle:true,
          backgroundColor:Colors.blue,
        ),
        body:Center(
          child:Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Container(
                width:5,
                height:620,
                color:Colors.black,
              ),
              Column(children: [
                SizedBox(
                  height:20,
                ),
              
              Container(
                width:200,
                height:50,
                color:Colors.amber,

              ),
              Container(
                width:200,
                height:50,
                color:Colors.white,
                child:Image.network('https://tse1.mm.bing.net/th?id=OIP.UnMsTW-KPv_zuERzqYPuqQHaHZ&pid=Api'),

              ),
              Container(
                width:200,
                height:50,
                color:Colors.green,

              ),

            ]
          ),
            ]
        ),
      ),
));
}
}