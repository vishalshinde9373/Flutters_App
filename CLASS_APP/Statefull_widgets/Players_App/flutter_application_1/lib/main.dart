
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Players',
      theme: ThemeData(
        colorScheme:ColorScheme.fromSeed(seedColor:Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PlayersApp(),
        );
  }
}
class PlayersApp extends StatefulWidget{

  @override 
  State<PlayersApp>createState()=> _PlayersAppState();
}

class _PlayersAppState extends State<PlayersApp>{
  int _counter=0;
  List<String>playersList=<String>[ "https://tse1.mm.bing.net/th?id=OIP.17Lo1opvdx8zl0xFG2pwHwHaFa&pid=Api&P=0&h=180","https://tse4.mm.bing.net/th?id=OIP.RgFhgbKi_li0EvpK0REOEgHaE7&pid=Api&P=0&h=180","https://tse4.mm.bing.net/th?id=OIP.kVUm8yuWuijHXyzaQwTUaAHaGt&pid=Api&P=0&h=180","https://tse1.mm.bing.net/th?id=OIP.sQUDeSJWqv3jt9AZPQDIvgHaFj&pid=Api&P=0&h=180"];

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar( 
        title: const Text("Players App"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Image.network( 
              playersList[_counter],
              height: 300,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            if(_counter<playersList.length-1){
              _counter++;
            }else{
              _counter=0;
            }
          });
        },
        tooltip: 'Increment',
    
        child: const Icon(Icons.add),
    ),
    );
  }
}