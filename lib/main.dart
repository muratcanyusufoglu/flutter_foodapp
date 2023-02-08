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

class Body extends StatelessWidget {
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
                  onPressed: () {
                    print('corba');
                  },
                  child: Image.asset('assets/photos/corba_2.jpg'))),
          Divider(),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    print('tatli');
                  },
                  child: Image.asset('assets/photos/tatli_4.jpg'))),
          Divider(),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    print('yemek');
                  },
                  child: Image.asset('assets/photos/yemek_4.jpg'))),
          Divider(),
        ],
      ),
    ));
  }
}
