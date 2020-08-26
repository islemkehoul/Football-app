

import 'package:flutter/material.dart';
import 'package:football_app/service.dart';

import 'matchesmodel.dart';
//import 'package:football_app/matchesmodel.dart';

class Allmatches extends StatefulWidget {
  
  
  @override
  _AllmatchesState createState() => _AllmatchesState();
}

class _AllmatchesState extends State<Allmatches>  {
  List<Match> _matches ; 

@override
  void initState(){

    super.initState();
    /*Service.allmatches().then((matches)  {
      
          _matches = matches ;
      
    } );*/
   }
  
  @override
  Widget build(BuildContext context) {
     
    return FutureBuilder(
          future : Service.allmatches(),
          builder : (context , snapshot)  {
            if(snapshot.connectionState== ConnectionState.done){
              _matches=snapshot.data;
              return Scaffold(
        body : ListView.builder(
          itemCount: _matches.length,
          itemBuilder: (context, index){
            Match obj = _matches[index];

            return Center(
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(obj.competition.area.name.toString()),
                    ),
                  ]
                ),
                

              ),
            );
        
          })
      
      );
            }
            return Card(
              child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text("zebi"),
                    ),
                  ]
                ),
            );

          }   
    );
  
  }}