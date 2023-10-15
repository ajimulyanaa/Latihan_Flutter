import "package:flutter/material.dart";

void main() {
  runApp(new MyWidget());
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("properti text dan container")),
      body: Center(
          //container adalah salah satu method untuk membungkus suatu content
          child: Container(
              //properti container
              color: Colors.lime,
              height: 100,
              width: 250,
              child: Text(
                "hello world",
                //minimum jumlah baris
                maxLines: 2,
                // mengatur text apabila tidak cukup
                // overflow: TextOverflow.clip,
                // softWrap: true/false, ==> mengatur text terpotong atau tidak
                textAlign: TextAlign.center,
                // style:TextStyle() ini adalah untuk memanggil dari text style
                style: TextStyle(
                  color: Colors.blue,
                  fontStyle: FontStyle
                      .italic, // FontStyle.italic atau FontStyle.normal
                  fontWeight: FontWeight.bold,
                ),
              ))),
    ));
  }
}
