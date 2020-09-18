import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: LoadingScreen(),
  ));
}

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/pitch.jpg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(15, 130, 15, 0),
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 75, 0, 0),
                      child: Text(
                        "The",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color:Colors.white
                        ),
                        shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3, 3),
                              blurRadius: 3.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            Shadow(
                              offset: Offset(10.0, 10.0),
                              blurRadius: 8.0,
                              color: Color.fromARGB(125, 0, 0, 0),
                            ),
                          ],
                        ),
                        
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 115, 0, 0),
                      child: Text(
                        "PITCH",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 55,
                            color: Colors.white,
                          ),
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(3, 3),
                              blurRadius: 3.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            Shadow(
                              offset: Offset(8, 8),
                              blurRadius: 8.0,
                              color: Color.fromARGB(125, 0, 0, 0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(195, 120, 0, 0),
                      child: Image.asset(
                        'assets/nike-256.png',
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ],
                ),
                ),
          ],),],),);
              
              
          
    
  }
  }
        
              
              
              
              
            
             
