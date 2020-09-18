
import 'package:flutter/material.dart';
import 'package:football_app/allmatches.dart';

import 'package:football_app/news.dart';

import 'appbar.dart';


void main() {
  runApp(MaterialApp(
    //home :Home(),
    initialRoute: '/',
    routes: {
      '/': (context) => ApppBar(),
      '/second' : (context) => News(), 
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