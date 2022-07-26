import 'package:flutter/material.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:url_launcher/url_launcher.dart';

class PagesController {
  BuildContext? context; //variable
  // ignore: body_might_complete_normally_nullable
  Future? init(BuildContext contex) {
    //metodo
    // ignore: unnecessary_this
    this.context = contex;
  }

  Future<void> whatsAppOpen() async {
    await launch(
        "https://api.whatsapp.com/send/?phone=5511914818483&text=Hola%2C+&type=phone_number&app_absent=0",
        forceWebView: true);
  }

  fotosPerfil() {
    return Wrap(
      spacing: 15.0, // gap between adjacent chips
      runSpacing: 10.0, // gap between lines
      children: <Widget>[
        const Image(
          width: 350,
          image: NetworkImage('https://i.imgur.com/O8TP608.jpg'),
        ),
        const Image(
          width: 350,
          image: NetworkImage('https://i.imgur.com/oS3oWGa.png'),
        ),
        const Image(
          width: 350,
          image: NetworkImage('https://i.imgur.com/cdMYJ8X.jpg'),
        ),
        const Image(
          width: 350,
          image: NetworkImage('https://i.imgur.com/CRPFi1w.jpg'),
        ),
        const Image(
          width: 350,
          image: NetworkImage('https://i.imgur.com/iGcMz5K.jpg'),
        ),
        const Image(
          width: 350,
          image: NetworkImage('https://i.imgur.com/nYdGEvq.jpg'),
        ),
        const Image(
          width: 350,
          image: NetworkImage('https://i.imgur.com/CvIviAA.jpg'),
        ),
        const Image(
          width: 350,
          image: NetworkImage('https://i.imgur.com/UEdMELp.jpg'),
        ),
        const Image(
          width: 350,
          image: NetworkImage('https://i.imgur.com/jTHPOsO.jpg'),
        ),
        const Image(
          width: 350,
          image: NetworkImage('https://i.imgur.com/jTHPOsO.jpg'),
        ),
        const Image(
          width: 350,
          image: NetworkImage('https://i.imgur.com/jTHPOsO.jpg'),
        ),
        const Image(
          width: 350,
          image: NetworkImage('https://i.imgur.com/jTHPOsO.jpg'),
        ),
      ],
    );
  }

//Metodo para pasar de pagina agregando gestoDetec y luego onTap

  // void goToLoginPagePerfil() {
  //   Navigator.pushAndRemoveUntil(
  //       context!,
  //       MaterialPageRoute(builder: (builder) => PagePerfil()),
  //       (route) => false);
  // }

  // Future<void> goToGitHub() async {
  //   await launch("https://github.com/elvisapp", forceWebView: true);
  // }

}
