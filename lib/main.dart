import 'package:flutter/material.dart';

import 'interface.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.restart_alt,color: Colors.black,),
            onPressed: () => setState(() {
              Interface(score: 0);
            })),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
            body: Interface(
          score: 0,
        )));
  }
}
