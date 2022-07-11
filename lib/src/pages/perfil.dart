import 'package:flutter/material.dart';
import 'package:web/src/home/home_page.dart';

class PagePerfil extends StatelessWidget {
  const PagePerfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            // _lineaRecta(),
            //_banner(context),

            SizedBox(
              height: 50,
            ),
            ////////////////////////
            //_conteiner_1(context),
            // SizedBox(
            //   height: 30,
            // ),
            /////////////////////////////
            // _decoration(context),
            SizedBox(
              height: 30,
            ),

            SizedBox(
              height: 30,
            ),
          ]),
          height: MediaQuery.of(context).size.width * 2.20,
        ),
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.60,
      child: Center(
        child: AppBar(
          elevation: 0,
          title: Center(child: const Text('PERFIL')),
          backgroundColor: Color.fromARGB(255, 127, 4, 165),
          actions: <Widget>[
            IconButton(
                onPressed: () async {
                  await Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (builder) => HomePage()),
                      (route) => false);
                },
                icon: Icon(Icons.logout)),
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
        CircleAvatar(
          radius: 60,
          child: const Image(
            width: 350,
            image: NetworkImage('https://i.imgur.com/QN1fdJj.png'),
          ),
        ),
        CircleAvatar(
          radius: 60,
          child: const Image(
            width: 350,
            image: NetworkImage('https://i.imgur.com/QN1fdJj.png'),
          ),
        ),
      ],
    );
  }
}
