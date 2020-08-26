

import 'package:flutter/material.dart';
import 'package:football_app/service.dart';

import 'matchesmodel.dart';
//import 'package:football_app/matchesmodel.dart';

class Allmatches extends StatefulWidget {
  
  
  @override
  _AllmatchesState createState() => _AllmatchesState();
}

class _AllmatchesState extends State<Allmatches>  {
  List<Matches> _matches ; 

@override
  void initState(){

    super.initState();
    Service.allmatches().then((matches)  {
      _matches = matches ;
    } );}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : ListView.builder(
        itemBuilder: (context, index){
          Matches obj = _matches[index];
          return Center(
            child: Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(obj.filters.toString()),
                  ),
                ]
              ),
              

            ),
          );
      
        })
    
    );
  }
}