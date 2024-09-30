
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'App Bar Color Change',
      theme: ThemeData(
        colorScheme:ColorScheme.fromSeed(seedColor:Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AppbarColorApp(),
        );
  }
}
class AppbarColorApp extends StatefulWidget{
  const AppbarColorApp({super.key});
  @override 
  State<AppbarColorApp>createState()=> _AppbarColorAppState();
}

class _AppbarColorAppState extends State<AppbarColorApp>{
  bool colorChange=true;

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar( 
        title: const Text("App Bar App"),
        centerTitle: true,
        backgroundColor: (colorChange)?Colors.amber:Colors.red,
      ),
      body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Change Appbar Color"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(colorChange){
            colorChange=false;
          }else{
            colorChange=true;
          }
        },
    
        child: const Icon(Icons.add),
    ),
    );
  }
}