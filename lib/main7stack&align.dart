import 'package:flutter/material.dart';

void main() => runApp(new Myapp());

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
          title: Text("Stack dan align"),
        ),
        //stack adalah sebuah tumpukan yang berarti kontenya di tumpuk
        body: Stack(
          children: [
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          Flexible(
                              flex: 1,
                              child: Container(
                                color: Colors.black12,
                              )),
                          Flexible(
                              flex: 1, child: Container(color: Colors.white)),
                        ],
                      )),
                  Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          Flexible(
                              flex: 1, child: Container(color: Colors.white)),
                          Flexible(
                              flex: 1, child: Container(color: Colors.black12)),
                        ],
                      ))
                ],
              ),
            ),
            ListView(
              children: [
                Container(
                    margin: EdgeInsets.all(4),
                    child: Text(
                        "Kaizen terdiri dari dua huruf kanji Kai dan Zen. Kai memiliki arti perubahan dan Zen memiliki arti kebaikan. Dikutip dari Forbes, Kaizen adalah sebuah praktek untuk memperbaiki diri dengan tindakan kecil secara bertahap yang kemudian akan menjadi kebiasaan dan dapat mengarah pada kesuksesan. Banyak yang beranggapan bahwa prinsip Kaizen digunakan oleh perusaahan untuk mengembangkan bisnis, namun sebenarnya prinsip Kaizen dapat diterapkan pada banyak aspek dalam hidup kita khususnya pada pengembangan diri. Bagaimana caranya? Mari kita simak beberapa tips dan strategi mengenai penerapan Kaizen dalam pengembangan diri.")),
                Container(
                    margin: EdgeInsets.all(4),
                    child: Text(
                        "Kaizen terdiri dari dua huruf kanji Kai dan Zen. Kai memiliki arti perubahan dan Zen memiliki arti kebaikan. Dikutip dari Forbes, Kaizen adalah sebuah praktek untuk memperbaiki diri dengan tindakan kecil secara bertahap yang kemudian akan menjadi kebiasaan dan dapat mengarah pada kesuksesan. Banyak yang beranggapan bahwa prinsip Kaizen digunakan oleh perusaahan untuk mengembangkan bisnis, namun sebenarnya prinsip Kaizen dapat diterapkan pada banyak aspek dalam hidup kita khususnya pada pengembangan diri. Bagaimana caranya? Mari kita simak beberapa tips dan strategi mengenai penerapan Kaizen dalam pengembangan diri.")),
                Container(
                    margin: EdgeInsets.all(4),
                    child: Text(
                        "Kaizen terdiri dari dua huruf kanji Kai dan Zen. Kai memiliki arti perubahan dan Zen memiliki arti kebaikan. Dikutip dari Forbes, Kaizen adalah sebuah praktek untuk memperbaiki diri dengan tindakan kecil secara bertahap yang kemudian akan menjadi kebiasaan dan dapat mengarah pada kesuksesan. Banyak yang beranggapan bahwa prinsip Kaizen digunakan oleh perusaahan untuk mengembangkan bisnis, namun sebenarnya prinsip Kaizen dapat diterapkan pada banyak aspek dalam hidup kita khususnya pada pengembangan diri. Bagaimana caranya? Mari kita simak beberapa tips dan strategi mengenai penerapan Kaizen dalam pengembangan diri.")),
                Container(
                    margin: EdgeInsets.all(4),
                    child: Text(
                        "Kaizen terdiri dari dua huruf kanji Kai dan Zen. Kai memiliki arti perubahan dan Zen memiliki arti kebaikan. Dikutip dari Forbes, Kaizen adalah sebuah praktek untuk memperbaiki diri dengan tindakan kecil secara bertahap yang kemudian akan menjadi kebiasaan dan dapat mengarah pada kesuksesan. Banyak yang beranggapan bahwa prinsip Kaizen digunakan oleh perusaahan untuk mengembangkan bisnis, namun sebenarnya prinsip Kaizen dapat diterapkan pada banyak aspek dalam hidup kita khususnya pada pengembangan diri. Bagaimana caranya? Mari kita simak beberapa tips dan strategi mengenai penerapan Kaizen dalam pengembangan diri."))
              ],
            ),
            //align adalah properti untuk mensejajarkan mirip float css
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text("tekan dong")),
            )
          ],
        ),
      ),
    );
  }
}
