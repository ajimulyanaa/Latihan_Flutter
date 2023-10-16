// stateleed widget adalah widget yang tidak dapat berubah ubah
//stateful widget adalah widget yang dapat berubah ubah

import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int angka = 0;
  void Tombol() {
    // setState(() ==> method properti agar merepresh segera
    setState(() {
      angka = angka + 1;
    });
  }

  void reset() {
    setState(() {
      angka = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("aplikasi aji"),
        ),
        body: Center(
            child: Column(
          // agar colum center di tengah
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //fontsize type nilainya adalah double
            Text(angka.toString(),
                style: TextStyle(fontSize: 10 + angka.toDouble())),
            //button onpres harus tertuju pada methon
            ElevatedButton(onPressed: Tombol, child: Text("Tambah bilangan")),
            ElevatedButton(onPressed: reset, child: Text("Reset"))
          ],
        )),
      ),
    );
  }
}
