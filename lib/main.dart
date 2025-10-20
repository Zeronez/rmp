import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lab 1',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 58, 183, 121))),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Лабораторная №1')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('Button pressed!');
        },
      ),
      body: Column(
        children: [
          Container(
            width: 200,
            height: 100,
            color: Color.fromARGB(255, 230, 230, 70),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Text 1'),
              Text('Text 2'),
              Text('Text 3'),
            ],
          ),

          Container(
            width: 100,
            height: 80,
            color: Colors.green,
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(255, 230, 20, 160),
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://n1s2.hsmedia.ru/bc/8e/4c/bc8e4ca67c152a834bb987a101782fc7/676x600_1_fbf36a3c5c8dfdf9015a856c4bbeb958@1920x1703_0xac120003_10835219821642160399.jpeg.webp'), 
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}