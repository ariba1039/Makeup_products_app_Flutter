import 'package:assignment1_flutterdevcamp/model/data.dart';
import 'package:flutter/material.dart';

import 'details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        title: const Text("Makeup Products"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://img.freepik.com/free-photo/tablet-near-cosmetics-white_23-2147742649.jpg?w=900&t=st=1679122018~exp=1679122618~hmac=31c85cd0a5edb2219aea561a534f59fe8d9575a3380ee52a200d31dd7bbf7c23",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink.shade300,
                    ),
                    child: const Center(
                      child: Text(
                        "Attractions",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink.shade300,
                    ),
                    child: const Center(
                      child: Text(
                        "Places",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink.shade300,
                    ),
                    child: const Center(
                      child: Text(
                        "Products",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),

            ///ListView.builder example
            // Container(
            //   height: 80,
            //   child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: 4,
            //       itemBuilder: (BuildContext context, index) {
            //         return Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Container(
            //             width: 120,
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(10),
            //               color: Colors.yellow.shade800,
            //             ),
            //             child: const Center(
            //                 child: Text(
            //               "Attraction",
            //               style: TextStyle(
            //                 fontSize: 18,
            //                 color: Colors.white,
            //               ),
            //             )),
            //           ),
            //         );
            //       }),
            // ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 20),
              child: Text(
                "Popular Products",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Tilt Prism',
                ),
              ),
            ),
            GridView.builder(
              /// By setting [shrinkWrap] true,
              /// we tell gridview to just occupy minimum possible space
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: datalist.length,

              /// [gridDelegate] defines how you can lay down your children
              /// on main and cross axis
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  /// This is used when we have to capture any user interaction
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          product: datalist[index],
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      color: Colors.pink.shade300,
                      child: Column(
                        children: [
                          Hero(
                            tag: datalist[index].productName, //London
                            child: Image.network(
                              datalist[index].productImage,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Text(
                              datalist[index].productName,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
