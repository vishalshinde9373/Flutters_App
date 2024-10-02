import 'package:flutter/material.dart';

void main(){
  runApp( 
    const MainApp(),
  );
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});
  
  @override 
  Widget build(BuildContext context){
    print("Device width:${MediaQuery.of(context).size.width}");
    print("Device width:${MediaQuery.of(context).size.height}");
    return MaterialApp( 
      home: Scaffold(  
        appBar: AppBar( 
          title: const Text( 
            "Coloum Demo",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),

          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container( 
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              Container( 
                height: 250,
                width: 200,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );

  }
}