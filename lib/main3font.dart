import 'package:flutter/material.dart';
import 'package:latihan_flutter_ericoo/main2stldanstf.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "contoh pengunaan text",
              style: TextStyle(fontFamily: "alex"),
            ),
          ),
          body: Center(
            child: Text(
              "aku sayang kamu anjayyy",
              style: TextStyle(
                  fontFamily: "alex",
                  decorationColor: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 50),
            ),
          )),
    );
  }
}
