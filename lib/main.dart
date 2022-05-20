import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:oneflip/pages/home.dart';
import 'package:oneflip/pages/level.dart';
import 'package:oneflip/pages/easy.dart';
import 'package:oneflip/pages/login.dart';
import 'package:oneflip/pages/medium.dart';
import 'package:oneflip/pages/hard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One flip',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (BuildContext ctx) => Page1(),
        '/login': (BuildContext ctx) => login(),
        '/level': (BuildContext ctx) => Page2(),
        '/easy': (BuildContext ctx) => easy(),
        '/medium': (BuildContext ctx) => medium(),
        '/hard': (BuildContext ctx) => hard(),
      },
    );
  }
}
