import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double opacity = .4;
  @override
  Widget build(BuildContext context) {
    print("rebuilding");
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Tutorials"),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.green.withOpacity(0.4),
          ),
          Center(
              child: Text("Getx Tutorial")),
          Slider(value: opacity, onChanged: (value){
            print(value);
            opacity = value;
            setState(() {
            });
          }),
        ],
      ),
    );
  }
}
