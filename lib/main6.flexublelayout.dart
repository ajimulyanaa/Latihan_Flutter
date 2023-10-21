import 'package:flutter/material.dart';

void main() => runApp(new Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Flexible Layout")),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Row(
              children: [
                // flexible adalaha ukuran dapat menyesuaikan layar, flek untuk perbandingannya
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(2),
                    color: Colors.green,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(2),
                    color: Colors.blue,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(2),
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(5),
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5),
              color: Colors.amber,
            ),
          ),
        ],
      ),
    ));
  }
}
