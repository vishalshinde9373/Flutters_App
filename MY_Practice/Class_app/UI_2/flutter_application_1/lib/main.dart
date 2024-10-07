import "package:flutter/Material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int count = 0;
  Widget build(BuildContext context) {
    // var decoration;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My cart",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Colors.purple,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 180,
                width: 700, // color:Colors.purple,

                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 233, 241),
                  border: Border.all(
                      color: const Color.fromARGB(255, 237, 235, 237),
                      width: 2),
                  borderRadius: BorderRadius.circular(18),
                ),
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    const SizedBox(width: 40),
                    ClipRRect(
                      // borderRadius:BorderRadius.circular(55),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),

                      child: Image.network(
                          "https://png.pngtree.com/thumb_back/fw800/background/20231002/pngtree-vibrant-sneakers-a-captivating-3d-render-depicting-colorful-footwear-fashion-image_13517412.png"),
                    ),
                    //const SizedBox(width:300),
                    // Padding(
                    //  padding:EdgeInsets.all(20),
                    //SizedBox(width:20),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          //   const SizedBox(width:10),
                          const Text(
                            "Nike Shoes",
                            // textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 30),
                          ),

                          const SizedBox(height: 10),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "with iconic style and legendary",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 10),
                              ),
                              // const SizedBox(width:40),
                              Text(
                                "comfort,on repeat.",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(width: 60),
                              const Text("\$77.00"),
                              const SizedBox(width: 60),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(Icons.remove),
                                  const SizedBox(width: 20),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    alignment: Alignment.center,
                                    child: Text("$count"),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 1),
                                    decoration: BoxDecoration(
                                      //color: Colors.purple,
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 1,
                                      ),

                                      borderRadius: BorderRadius.circular(2),

                                      //  clipBehavior:Clip.antiAlias,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  const Icon(Icons.add),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 180,
                width: 700,
                // color:Colors.purple,

                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 233, 241),
                  border: Border.all(
                      color: const Color.fromARGB(255, 237, 235, 237),
                      width: 2),
                  borderRadius: BorderRadius.circular(18),
                ),
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    const SizedBox(width: 40),
                    ClipRRect(
                      // borderRadius:BorderRadius.circular(55),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      child: Image.network(
                          "https://png.pngtree.com/thumb_back/fw800/background/20231002/pngtree-vibrant-sneakers-a-captivating-3d-render-depicting-colorful-footwear-fashion-image_13517412.png"),
                    ),
                    //  const SizedBox(width:300),
                    // Padding(
                    //  padding:EdgeInsets.all(20),
                    //SizedBox(height:40),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          // const SizedBox(width:10),
                          const Text(
                            "Nike Shoes",
                            // textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 30),
                          ),

                          const SizedBox(height: 10, width: 20),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 20),
                              Text(
                                "with iconic style and legendary",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 10),
                              ),
                              //    const SizedBox(height:5
                              //  ),
                              Text(
                                "comfort,on repeat.",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(width: 60),
                              const Text("\$77.00"),
                              const SizedBox(width: 60),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    child: const Icon(Icons.remove),
                                    onTap: () {
                                      if (count > 0) {
                                        count--;
                                        setState(() {});
                                      }
                                    },
                                  ),
                                  const SizedBox(width: 20),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    alignment: Alignment.center,
                                    child: Text("$count"),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 1),
                                    decoration: BoxDecoration(
                                      //color: Colors.purple,
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 1,
                                      ),

                                      borderRadius: BorderRadius.circular(2),
                                      //  clipBehavior:Clip.antiAlias,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  GestureDetector(
                                    child: const Icon(Icons.add),
                                    onTap: () {
                                      count++;
                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //   const SizedBox(height:50),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 40),
                    Text("Subtotal :"),
                    SizedBox(width: 580),
                    Text(
                      "\$800.00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 40, height: 20),
                    Text(
                      "Delivery Fee :",
                    ),
                    SizedBox(width: 570),
                    Text(
                      "\$5.00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 40,
                      height: 20,
                    ),
                    Text("Discount :"),
                    SizedBox(width: 580),
                    Text(
                      "\$800.00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20, width: 100),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                minimumSize: const Size(720, 40),
              ),
              onPressed: () {},
              child: const Text(
                "Checkout for 480.00",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}