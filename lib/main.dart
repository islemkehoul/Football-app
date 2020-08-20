//import 'dart:js';

import 'package:flutter/material.dart';
//import 'package:football_app/matches.dart';
import 'package:football_app/service.dart';

void main() {
  runApp(MaterialApp(
    //home :Home(),
    initialRoute: '/second',
    routes: {
      '/': (context) => Home(),
      '/second' : (context) => Service("filter"), 
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