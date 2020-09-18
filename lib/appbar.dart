import 'package:flutter/material.dart';
import 'package:football_app/allmatches.dart';


import 'news.dart';

class ApppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
          child: Scaffold(
            appBar: AppBar(
              elevation: 10,
               backgroundColor: Colors.black,

                actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.search,
            size: 26.0,
          ),
        )
      ),
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {},
          child: Icon(
              Icons.more_vert
          ),
        )
      ),
  ],
            bottom: TabBar(
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(icon: Icon(IconData(57746, fontFamily: 'MaterialIcons')),text: "Matches",),
                Tab(icon: Icon(IconData(59600, fontFamily: 'MaterialIcons')),text: "News",),
                
              ],
            ),
            
          ),
      
       body: TabBarView(
            children: [
              Allmatches(),
              News(),
            ],
          ),

    ),
    );
  }
}