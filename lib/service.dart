import 'package:flutter/material.dart';
//import 'package:http/http.dart'

class Service extends StatefulWidget {
    final String filter ;
    Service(this.filter);
    
  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {

  String url ;
  Future allData(String filter) async{


    
  }
 void initState(){
   super.initState();
   allData(widget.filter);
 }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
  


  
