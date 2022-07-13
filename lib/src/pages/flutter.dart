import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web/src/home/home_controller.dart';
import 'package:web/src/pages/pages_controller.dart';

class PageDart extends StatelessWidget {
  PagesController _con = PagesController();
  // const PageDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _con.init(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 127, 4, 165),
      ////////////////////////////////////Resto del Body
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                Color.fromARGB(255, 127, 4, 165),
                Colors.amber,
                Color.fromARGB(255, 6, 21, 240),
              ])),
          child: Column(children: [
            _appBar(context),
            _lineaRecta(),
            _banner(context),
            SizedBox(
              height: 30,
            ),
            _fotosPerfil(),
            ////////////////////////////

            SizedBox(
              height: 50,
            ),

            /////////////////////////////
            // _decoration(context),
            SizedBox(
              height: 30,
            ),
            ///////
            SizedBox(
              height: 30,
            ),
            ///////////////////////////////
          ]),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _con.whatsAppOpen();
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.whatsapp_rounded),
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.60,
      child: Center(
        child: AppBar(
          title: Center(child: const Text('FLUTTER')),
          backgroundColor: Color.fromARGB(255, 127, 4, 165),
          actions: <Widget>[
            //////////children
          ],
        ),
      ),
    );
  }

  Widget _lineaRecta() {
    return Container(
      width: 1500,
      color: Colors.amber,
      height: 10,
    );
  }

  Widget _banner(BuildContext context) {
    return Container(
      child: const Image(
        image: NetworkImage('https://i.imgur.com/hcRu0r0.png'),
      ),

      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(colors: [
          Color(0x003d85c6),
          Color.fromARGB(255, 46, 101, 219),
          Color(0x000b5394),
        ]),
      ),

      //width: MediaQuery.of(context).size.width * 1.60,
      //color: Colors.amber,
      //height: MediaQuery.of(context).size.height * 0.80,
    );
  }

  Widget _fotosPerfil() {
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
}
