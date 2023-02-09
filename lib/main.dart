import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Body(),
          appBar: AppBar(
            title: Center(child: Text('Home Page')),
          )),
    );
  }
}

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int corbaNo = 1;
  int tatliNo = 1;
  int yemekNo = 1;

  List<String> corbaIsimleri = [
    'mercimek',
    'yayla',
    'ezogelin',
    'tavuk',
    'tarhana'
  ];

  void random() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                  surfaceTintColor: Colors.red,
                  shadowColor: Colors.red,
                  foregroundColor: Colors.black87),
              onPressed: random,
              child: Image.asset('assets/photos/corba_$corbaNo.jpg'),
            ),
          ),
          Text(
            corbaIsimleri[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Divider(),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('tatli');
              },
              child: Image.asset('assets/photos/tatli_$tatliNo.jpg'),
            ),
          ),
          Divider(),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('yemek');
              },
              child: Image.asset('assets/photos/yemek_$yemekNo.jpg'),
            ),
          ),
          Divider(),
        ],
      ),
    ));
  }
}
