//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:football_app/allmatches.dart';
//import 'package:football_app/matchesmodel.dart';
//import 'package:football_app/matches.dart';
import 'package:football_app/service.dart';

void main() {
  runApp(MaterialApp(
    //home :Home(),
    initialRoute: '/third',
    routes: {
      '/': (context) => Home(),
      '/second' : (context) => Service(), 
      '/third': (context) => Allmatches(),
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