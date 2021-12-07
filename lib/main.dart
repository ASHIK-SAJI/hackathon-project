import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

const String _url = '';
const String _uml = '';
const String _ukl = '';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tab',
     theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:DefaultTabController(
      length:3,
      child: Scaffold(
    appBar: AppBar(
      title: Text('CYGNUS'),
    backgroundColor: Colors.white,
    //title: Text('CYGNUS'),
    //centerTitle: true,
      elevation: 12,
    bottom: TabBar(

      unselectedLabelColor: Colors.redAccent,
      indicatorSize: TabBarIndicatorSize.label,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.redAccent
    ),
        tabs: [
          Tab(
              child: Container(
                decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(50),
                     border: Border.all(
                       color: Colors.redAccent,
                       width: 3,
                )
              ),
                child: Align(
                  alignment:Alignment.center,
                   child:Text("X"),
                ),
             ),
             ),
          Tab(
              child: Container(
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(50),
                     border: Border.all(
                        color: Colors.redAccent,
                        width: 3,
                 )
              ),
                child: Align(
                   alignment:Alignment.center,
                      child:Text("Y"),
                ),
               ),
               ),
          Tab(
              child: Container(
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                       color: Colors.redAccent,
                       width: 3,
                 )
               ),
                 child: Align(
                    alignment:Alignment.center,
                       child:Text("Z"),
                ),
               ),
               ),
        ],
    ),
    ),
      body:Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[


    Padding(
    padding:EdgeInsets.fromLTRB(300,0,0,0),
    child: FloatingActionButton(
      backgroundColor: Colors.redAccent,
      onPressed: _launchURL,
      child: Text('Click \nhere'),



    ),

    ),
    Padding(
    padding:EdgeInsets.fromLTRB(300,0,0,0),
    child: FloatingActionButton(
      backgroundColor: Colors.redAccent,
      onPressed: _launchUML,
      child: Text('Click \nhere'),
    ),

    ),
    RaisedButton(
    onPressed: _launchUKL,
    child: Text('Click here'),
    )
    ],
    ),


      ),
    ),
    );
  }
}


void _launchURL() async {
  if(!await launch(_url))throw 'could not launch $_url';
}
void _launchUML() async {
  if(!await launch(_url))throw 'could not launch $_uml';
}
void _launchUKL() async {
  if(!await launch(_url))throw 'could not launch $_ukl';
}
