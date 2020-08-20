//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:football_app/results.dart';

void main() {
  runApp(MaterialApp(
    //home :Home(),
    initialRoute: '/second',
    routes: {
      '/': (context) => Home(),
      '/second' : (context) => Matches(), 
          },
  ));
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
  }