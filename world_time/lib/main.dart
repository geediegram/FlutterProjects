import 'package:flutter/material.dart';
import 'pages/loading.dart';
import 'pages/location.dart';
import 'pages/home.dart';

void main() async {


  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => Location(),
    },
  ));
}
