import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Column Demo",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                  "https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
              Container(
                height: 200,
                width: 200,
                color: Colors.blueGrey,
              ),
              Image.network(
                  "https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
              Container(
                height: 200,
                width: 200,
                color: Colors.lightBlue,
              ),
              Image.network(
                  "https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
              Container(
                height: 200,
                width: 200,
                color: Colors.lightGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
