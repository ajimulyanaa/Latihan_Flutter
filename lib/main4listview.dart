import "package:flutter/material.dart";
import "package:latihan_flutter_ericoo/main2Anonimusfucction.dart";

void main() {
  runApp(new Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  //membuat list untuk isi listview

  List<Widget> views = [];

  int counter = 1;
  // _MyappState() {
  //   for (int i = 0; i < 15; i++) {
  //     views.add(Text(
  //       "data ke" + i.toString(),
  //       style: TextStyle(fontSize: 50),
  //     ));
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Listview"),
        ),
        //listview berguna agar pada saat konten melebihi widget tidak error beda dengan row jika konten bablas makan akan error sedangkan lisview akan scrool
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        views.add(Text("Data ke-" + counter.toString()));
                        counter++;
                      });
                    },
                    child: Text("tambah")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // views.removeLast(); = menghapus data sebelumnya
                        views.removeLast();
                        counter--;
                      });
                    },
                    child: Text("hapus"))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: views,
            )
          ],
        ),
      ),
    );
  }
}
