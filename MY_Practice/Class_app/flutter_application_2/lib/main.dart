import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int Quantity = 0;

  @override
  Widget build(BuildContext context) {
    //  print("width:${MediaQuery.of(context).size.width}");
    // print("Height:${MediaQuery.of(context).size.height}");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shoes",
            style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700, color: Colors.purple),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
              color: Colors.purple,
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg"),
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text("Nike Air Shoes 1'07",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        //SizedBox(height:10,
                        //width:10,
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                          ),
                          onPressed: () {},
                          child: const Text(
                            "SHOES",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                          ),
                          onPressed: () {},
                          child: const Text(
                            "FOOTWEAR",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "With iconic style and legendary comfort, the AF-1 was made to be worm on repeat.This iteration puts a fresh spin on the hoopsclassic with crisp leather,eraechoing '80s constructions and reflective design Swoosh logos.",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Align(
                          alignment: Alignment.center,
                          child: Text("Quantity :",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          child: const Icon(Icons.remove),
                          onTap: () {
                            if (Quantity > 0) {
                              Quantity--;
                              setState(() {});
                            }
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Text("$Quantity",
                          style:  const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          )),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        GestureDetector(
                          child: const Icon(Icons.add),
                          onTap: () {
                            Quantity++;
                            setState(() {});
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    const SizedBox(height: 50, width: 500),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        minimumSize: const Size(900, 50),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "P U R C H A S E",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
