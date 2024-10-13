import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shoes"),
          actions: [
            IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 380,
              width: 411,
              child: Image.network(
                "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: const Text(
                    "Nike Air Force 107",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 240,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "SHOES",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "FOOTWARE",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              width: 410,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "In 1971, Bowerman used his wife's waffle iron to for track shoes that would grip but be lightweight and increase the runner's speed. Oregon's Hayward Field was transitioning to an artificial surface, and Bowerman wanted a sole which could grip to grass or bark dust without the use of spikes.",
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 50,
              child: Counter(),
            ),
            const SizedBox(height: 15),
            Container(
              width: 370,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: const Text(
                  "Purchase",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 1;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      if (count > 1) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 411,
      child: Row(
        children: [
          Container(
            width: 120,
            height: 80,
            child: const Center(
                child: Text(
              "Quantity :",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            )),
          ),
          Container(
            width: 40,
            height: 40,
            child: IconButton(
              icon: const Icon(Icons.add),
              onPressed: increment,
            ),
          ),
          SizedBox(
            width: 60,
            height: 40,
            child: Center(
                child: Text(
              "$count",
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
            )),
          ),
          SizedBox(
            width: 40,
            height: 40,
            child: IconButton(
              icon: const Icon(Icons.remove),
              onPressed: decrement,
            ),
          ),
        ],
      ),
    );
  }
}
