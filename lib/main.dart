import 'package:flutter/material.dart';
import 'package:natthawat466412221005/home_page.dart';
import 'package:natthawat466412221005/login_page.dart';
import 'package:natthawat466412221005/register_page.dart';
import 'package:natthawat466412221005/visitor_page.dart';
import 'package:natthawat466412221005/register_page.dart';
import 'package:natthawat466412221005/visitor_page.dart';

import 'home_page.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayutthaya Tourism App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: 'Arial',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/visitor': (context) => VisitorPage(),
      },
    );
  }
}
