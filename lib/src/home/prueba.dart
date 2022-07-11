/*      import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:web/src/pages/flutter.dart';
import 'package:web/src/pages/html.dart';
import 'package:web/src/pages/java.dart';
import 'package:web/src/pages/js.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 82, 144, 236),
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 127, 4, 165),
                Colors.amber,
                Color.fromARGB(255, 6, 21, 240),
              ])),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 67, 121),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Perfil'),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Linkedin'),
            ),
            ListTile(
              leading: Icon(Icons.install_desktop),
              title: Text('GitHub'),
            ),
            ListTile(
              leading: Icon(Icons.add_call),
              title: Text('Whatsapp'),
            ),
            ListTile(
              leading: Icon(Icons.insert_link_sharp),
              title: Text('Intagram'),
            ),
            ListTile(
              leading: Icon(Icons.facebook),
              title: Text('Facebook'),
            ),
            ListTile(
              leading: Icon(Icons.assistant_photo_outlined),
              title: Text('Português'),
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Donación'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
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
            ////////////////////////////
            _lineaRecta(),
            _banner(context),
            SizedBox(
              height: 50,
            ),
            ////////////////////////
            _conteiner_1(context),
            // SizedBox(
            //   height: 30,
            // ),
            /////////////////////////////
            _decoration(context),
            SizedBox(
              height: 30,
            ),
            _conteiner_2(context),
            // SizedBox(
            //   height: 30,
            // ),
            ///////////
            _decoration(context),
            SizedBox(
              height: 30,
            ),
            ///////////////////////////////
            _conteiner_3(context),
            // SizedBox(
            //   height: 30,
            // ),
            _decoration(context),

            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.11,
            // ),
          ]),
        ),
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.60,
      child: Center(
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 127, 4, 165),
          actions: <Widget>[
            // VerticalDivider(
            //   color: Colors.amber,
            //   thickness: 3,
            // ),
            CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 30,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageDart()),
                  );
                },
                child: const Text(
                  'FLU',
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 30,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageJava()),
                  );
                },
                child: const Text(
                  'JA',
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 30,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageHtml()),
                  );
                },
                child: const Text(
                  'HT',
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 30,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageJs()),
                  );
                },
                child: const Text(
                  'JS',
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }

  /////////////////////////////
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

  Widget _decoration(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(flip: false, reverse: true),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(colors: [
            Color(0x003d85c6),
            Color.fromARGB(255, 46, 101, 219),
            Color(0x000b5394),
          ]),
        ),
        height: MediaQuery.of(context).size.height * 0.15,
        //height: _headerHeight,
        //let's create a common header widget
      ),
    );
  }

  Widget _conteiner_1(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Desarrollador de Web y App -->'),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              radius: 60,
              child: const Image(
                image: NetworkImage('https://i.imgur.com/QN1fdJj.png'),
              ),
            ),
          ),
        ],
      ),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(colors: [
          Color(0x003d85c6),
          Color.fromARGB(255, 46, 101, 219),
          Color(0x000b5394),
        ]),
      ),
      width: MediaQuery.of(context).size.width * 1.60,
      //color: Colors.amber,
      height: MediaQuery.of(context).size.height * 0.23,
    );
  }

  Widget _conteiner_2(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Análisis y creación de Software -->'),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              radius: 60,
              child: const Image(
                image: NetworkImage('https://i.imgur.com/QN1fdJj.png'),
              ),
            ),
          ),
        ],
      ),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(colors: [
          Color(0x003d85c6),
          Color.fromARGB(255, 46, 101, 219),
          Color(0x000b5394),
        ]),
      ),
      width: MediaQuery.of(context).size.width * 1.60,
      //color: Colors.amber,
      height: MediaQuery.of(context).size.height * 0.23,
    );
  }

  Widget _conteiner_3(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Reparaciones electronicas -->'),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              radius: 60,
              child: const Image(
                image: NetworkImage('https://i.imgur.com/QN1fdJj.png'),
              ),
            ),
          ),
        ],
      ),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(colors: [
          Color(0x003d85c6),
          Color.fromARGB(255, 46, 101, 219),
          Color(0x000b5394),
        ]),
      ),
      width: MediaQuery.of(context).size.width * 1.60,
      //color: Colors.amber,
      height: MediaQuery.of(context).size.height * 0.23,
    );
  }
}

// Widget _appBar(BuildContext context) {
  //   return AppBar(

  //     backgroundColor: Color.fromARGB(255, 19, 29, 61),
  //     elevation: 0,
  //     leading: IconButton(
  //       icon: SvgPicture.asset("assets/icons/back.svg"),
  //       onPressed: () async {
  //         await Navigator.pushAndRemoveUntil(
  //             context,
  //             MaterialPageRoute(builder: (builder) => SignInPage()),
  //             (route) => false);
  //       },
  //     ),
  //   );
  // }
       */