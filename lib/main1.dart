import 'package:flutter/material.dart';

void main() {
  runApp(new pertemuan1());
}

// stl enter untuk shorthand statleswidget
class pertemuan1 extends StatelessWidget {
  @override
  //mehod wajib yang harus di overide pada class stl
  Widget build(BuildContext context) {
    return MaterialApp(
      // merupakan methon untuk menunjukan widget yang memiliki data2 memliki banyak properti
      //home merupakan atribut dari material app untuk tampilan awal
      //scafold merupakan method dari home untuk tampilan aplikasi
      home: Scaffold(
        // appBar adalah untuk judul sebuah tampilan
        // appBar: AppBar(title: Text("aplikasi pertama saya"),), ==> ini adalah untuk sebuah judul title yang memiliki properti text
        appBar: AppBar(
          title: Text("aplikasi pertama saya"),
        ),
        // body merupakan badan dari sebuah aplikasi
        //Center(child: Text("hello world")), ==>agar tulisan berada di tengah click kanan lalu refactor
        body: Center(child: Text("hello world")),
      ),
    );
  }
}
