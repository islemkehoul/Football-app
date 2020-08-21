import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:football_app/matchesmodel.dart';
import 'package:http/http.dart' as http;


class Service extends StatefulWidget {
    final String dateFrom ;
    final String dateTo ;
    //final String dateFrom ;


    Service(this.dateFrom,this.dateTo);

  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {

  String url ;
  String token = "ee0a94e6bec540508633fee3840bc73b";
  Matches matchObject = new Matches();

  Future<List<Matches>> allmatches(String dateFrom,String dateTo) async{
    var queryParameters = {
  'dateFrom': dateFrom,
  'dateTo': dateTo,
};
var uri =
    Uri.http('https://www.football-data.org/v2', '/matches', queryParameters);
var response = await http.get(uri, headers: {
  HttpHeaders.authorizationHeader: 'Token $token',
  HttpHeaders.contentTypeHeader: 'application/json',
});

List<dynamic> data = jsonDecode(response.body); 
List<Matches> match = data.map((data)=> Matches.fromJson(data)).toList();
return match ; 
//Navigator.pushReplacement(context,);

  }
 void initState(){
   super.initState();
   allmatches(widget.dateFrom,widget.dateTo);
 }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
  


  
