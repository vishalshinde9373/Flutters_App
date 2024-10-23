import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
        appBar: AppBar(  
          title:  Text("Flash 3"),
        ),
        
        );
        body: Center(
          child: Container(
              width: 200,
              height: 200,
            
            ),
          )
      );
    
  }
}
