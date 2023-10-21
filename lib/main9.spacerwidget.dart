import 'package:flutter/material.dart';
import 'package:latihan_flutter_ericoo/main2Anonimusfucction.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("spscer widget"),
        ),
        // spacer widget adalah properti untuk memberikan space
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Spacer(
                flex: 1,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
              Spacer(
                flex: 2,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
              Spacer(
                flex: 3,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
