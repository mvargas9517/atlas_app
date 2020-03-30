import 'package:flutter/material.dart';
import 'trip_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
  home: LoginPage()));


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;


    return Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                height: _height,
                width: _width,
                child: Image.asset('images/build.jpg', fit: BoxFit.fill,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Column(
                      children: <Widget>[
                        Text('Atlas',
                        style: GoogleFonts.sourceCodePro(letterSpacing: 20, fontSize: 35, fontWeight: FontWeight.bold)),
                          Text('the world your way',
                        style: GoogleFonts.sourceCodePro(letterSpacing: 1.5, fontSize: 15,)),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 50,
                right: 0,
                child: Container(
                  width: _width,
                  height: _height * 0.6,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color.fromRGBO(41, 52, 93 , 1), Color.fromRGBO(41, 52, 93 , 0),],
                    begin: FractionalOffset.bottomCenter,
                    end: FractionalOffset.topCenter,
                    ),
                  ),
                )),
              Positioned(
                bottom: 0,
                right: 0,
                child: Column(
                  children: <Widget>[
                    Text('Find your trip together\n  and let you guide...',
                    style: GoogleFonts.titilliumWeb(
                      fontSize: 25,
                      color: Colors.white,
                      letterSpacing: 1
                    ),),
                    SizedBox(height: 20),
                    Container(
                      color: Colors.blueGrey[800].withOpacity(0.8),
                      height: _height * 0.064,
                      width: _width * 0.8,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.white.withOpacity(0.7),),
                          hintText: 'Where?', hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                          suffixIcon: Icon(Icons.mic, color: Colors.white.withOpacity(0.7),)
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text('take full advantage of this app by logging in...',
                    style: GoogleFonts.titilliumWeb(
                      color: Colors.grey[400],
                      letterSpacing: 0.4
                    ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        FlatButton(
                          color: Color.fromRGBO(41, 52, 93 , 1),
                          padding: EdgeInsets.fromLTRB(70,15,75,20),
                        onPressed: () {}, 
                          child: Text('Sign-up',
                          style: GoogleFonts.titilliumWeb(
                            color: Colors.white,
                            fontSize: 20
                          ),)),
                          FlatButton(
                          color: Color.fromRGBO(41, 52, 93 , 1),
                          padding: EdgeInsets.fromLTRB(70,15,75,20),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DestinationPage()));
                        }, 
                          child: Text('Log in',
                          style: GoogleFonts.titilliumWeb(
                            color: Colors.white,
                            fontSize: 20
                          ),)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
   );
  }
}