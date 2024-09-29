import "package:flutter/material.dart";

void main() {
  runApp(const ToggleColor());
}

class ToggleColor extends StatefulWidget {
  const ToggleColor({super.key});

  @override
  State createState() => _ToggleColorState();
}

class _ToggleColorState extends State {
  bool changeColor = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Toggle Color"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Container(
            width: 150,
            height: 150,
            color: changeColor ? Colors.blue : Colors.amber,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (changeColor == true) {
              changeColor = false;
            } else {
              changeColor = true;
            }
            setState(() {});
          },
          backgroundColor: changeColor ? Colors.blue : Colors.yellow,
          child: const Text("Toggle"),
        ),
      ),
    );
  }
}
