import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:web/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Web());
}

class Web extends StatelessWidget {
  Web({Key? key}) : super(key: key);

  Color _primaryColor = HexColor('#999905');
  Color accentColor = HexColor('#030303');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'elvis.com',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: accentColor,
        //scaffoldBackgroundColor: Color.fromARGB(255, 49, 5, 119),
        //primarySwatch: Colors.amber,
      ),
      home: const SplashScreen(title: 'elvis.com'),
    );
  }
}
