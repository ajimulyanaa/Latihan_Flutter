import "package:flutter/material.dart";

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Image Widget"),
      ),
      body: ListView(children: [
        Flexible(
          flex: 1,
          child: Container(
            width: 300,
            height: 300,
            padding: EdgeInsets.all(3),
            color: Colors.amber,
            child: Image(
              // imgae yang diambil dari intenet
              image: NetworkImage(
                  "https://cdn1-production-images-kly.akamaized.net/Vj8H35BG9YORTGDUOgJLJKK4jWU=/800x800/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4550540/original/074316200_1692872138-Ilustrasi_3_pemain_Persib_Bandung-_Bola.com-Salsa_Dwi_Novita.jpg"),
              // properti fit dab repeat image
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            width: 300,
            height: 300,
            padding: EdgeInsets.all(3),
            color: Colors.amber,
            child: Image(
              // imgae yang diambil dari local
              //harus konfigurasi yaml
              //buat dulu folder images
              image: AssetImage("images/Bandung City Tour .jpg"),
              // properti fit dab repeat image
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ]),
    ));
  }
}
