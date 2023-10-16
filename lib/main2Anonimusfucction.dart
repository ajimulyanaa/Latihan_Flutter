//anonimus function digunakan untuk function yang hanya akan digunakan oleh satu properti saja ==> (parameter) {kode program}

import 'package:flutter/material.dart';

void main() {
  runApp(new Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  String mesage = "tombol belum ditekan";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("anonimouse functiom"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(mesage),
                  //( method){
                  // setState(() {
                  //   mesage="tombol sudah ditekan";
                  // }); ==> anonymouse function
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          mesage = "tombol sudah ditekan";
                        });
                      },
                      child: Text("tekan")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          mesage = "batal ditekan";
                        });
                      },
                      child: Text("batal"))
                ],
              ),
            )));
  }
}
