import 'package:flutter/material.dart';
import 'package:football_app/ErrorMessage.dart';
import 'package:football_app/service.dart';
import 'package:intl/intl.dart';
import 'matchesmodel.dart';

class Allmatches extends StatefulWidget {
  @override
  _AllmatchesState createState() => _AllmatchesState();
}

class _AllmatchesState extends State<Allmatches> {
  List<Match> _matches;
  Future userFuture;
  void initState() {
    super.initState();
    userFuture = Service.allmatchestoday();
  }
  void todaydate() {
    setState((){
      userFuture = Service.allmatchestoday();
    });
  }
   void tommorrowdate(){
  setState((){
    userFuture = Service.allmatchestom();
  });
  }
   void yesterdaydate(){
  
  setState((){
    userFuture = Service.allmatchesyes();
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder(
          future: userFuture,
          // ignore: missing_return
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Text('no connection');

              case ConnectionState.done:
                if (snapshot.hasError) {
                  return ErrorMessage();
                } 
                if(snapshot.hasData) {
                  _matches = snapshot.data;
                  if(_matches != null){ 
                    
                  return Scaffold(
                    backgroundColor: Colors.black54,
                    appBar: AppBar(
                        backgroundColor: Color.fromRGBO(150, 247, 158, 30),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlatButton(
                              textColor: Colors.white,
                              onPressed: () {
                               yesterdaydate();
                              },
                              child: Text("Yesterday"),
                              shape: CircleBorder(
                                  side: BorderSide(color: Colors.transparent)),
                            ),
                            FlatButton(
                              textColor: Colors.white,
                              onPressed: () {
                                todaydate();
                              },
                              child: Text("Today"),
                              shape: CircleBorder(
                                  side: BorderSide(color: Colors.transparent)),
                            ),
                            FlatButton(
                              textColor: Colors.white,
                              onPressed: () {
                                tommorrowdate();
                              },
                              child: Text("Tommorow"),
                              shape: CircleBorder(
                                  side: BorderSide(color: Colors.transparent)),
                            ),
                          ],
                        )),
                    body: ListView.builder(
                        itemCount: _matches.length,
                        itemBuilder: (context, index) {
                          Match obj = _matches[index];
                          String formattedTime =
                              DateFormat.Hm().format(obj.utcDate);

                          return Container(
                            child: Card(
                              color: Color.fromRGBO(73, 92, 77, 30),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        obj.competition.name.toString(),
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                        ),
                                      ),
                                      //SizedBox(height : 15),
                                      Divider(
                                        color: Colors.black,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            obj.homeTeam.name.toString(),
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            formattedTime.toString(),
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Expanded(
                                                                                      child: Text(
                                              obj.awayTeam.name.toString(),
                                              style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ]),
                              ),
                            ),
                            decoration: new BoxDecoration(
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 10.0,
                                ),
                              ],
                            ),
                          );
                        }),
                  );
                }
                else{
                  return Card(
                    child: Text(" There is no match today ",style: TextStyle(color : Colors.white),),);
                  }}
                 
                break ; 
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.grey,
                    valueColor: new AlwaysStoppedAnimation<Color>(
                        Color.fromRGBO(36, 117, 43, 30)),
                  ),
                );
              //LoadingScreen();

              case ConnectionState.active:
                return Text('please wait ');
            }
          }),
    );
  }
}

