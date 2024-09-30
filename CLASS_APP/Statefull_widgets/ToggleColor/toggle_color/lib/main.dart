import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Container color',
      theme: ThemeData(
        colorScheme:ColorScheme.fromSeed(seedColor:Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ContainerColorApp()
        );
  }
}
class ContainerColorApp extends StatefulWidget{
  const ContainerColorApp({super.key});
  @override 
  State<ContainerColorApp>createState()=> _ContainerColorAppState();
}

class _ContainerColorAppState extends State<ContainerColorApp>{
  bool colorChnage=true;

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar( 
        title: const Text("Color Change"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center( 
        child: Container( 
          height: 200,
          width: 200,
          color: (colorChnage)?Colors.amber:Colors.blue,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(colorChnage){
            colorChnage=false;
          }else{
            colorChnage=true;
          }
        },
    
        child: const Icon(Icons.add),
    ),
    );
  }
}