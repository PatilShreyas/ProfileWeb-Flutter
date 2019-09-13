import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shreyas Patil',
      theme: ThemeData(
        fontFamily: 'GoogleSans',
        primarySwatch: Colors.blueGrey,
      ),
      home: SPHomePage(),
    );
  }
}

class SPHomePage extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Shreyas Patil"),
        ),
        body: new Center(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/ShreyasPatil.jpg')
                        )
                    )),
                Text(
                  "Shreyas Patil", 
                  style: new TextStyle(
                    fontStyle: FontStyle.italic
                  ),
                  textScaleFactor: 2.0),
                Text(
                  "Android Developer"
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: new Icon(FontAwesomeIcons.envelope), 
                      onPressed: ()=> html.window.open("mailto:shreyaspatilg@gmail.com", "Email"),
                    ),
                    IconButton(
                      icon: new Icon(FontAwesomeIcons.facebook), 
                      onPressed: ()=> html.window.open("https://www.facebook.com/shreyaspatil99", "Facebook"),
                    ),
                    IconButton(
                      icon: new Icon(FontAwesomeIcons.twitter), 
                      onPressed: ()=> html.window.open("https://twitter.com/imShreyasPatil", "Twitter"),
                    ),
                    IconButton(
                      icon: new Icon(FontAwesomeIcons.linkedin), 
                      onPressed: ()=> html.window.open("https://www.linkedin.com/in/patil-shreyas", "LinkedIn"),
                    ),
                    IconButton(
                      icon: new Icon(FontAwesomeIcons.instagram), 
                      onPressed: ()=> html.window.open("https://instagram.com/_patilshreyas/", "Instagram"),
                    ),
                    IconButton(
                      icon: new Icon(FontAwesomeIcons.github), 
                      onPressed: ()=> html.window.open("https://github.com/PatilShreyas", "GitHub"),
                    ),
                    IconButton(
                      icon: new Icon(FontAwesomeIcons.medium), 
                      onPressed: ()=> html.window.open("https://medium.com/@patilshreyas", "Medium"),
                    ),
                    IconButton(
                      icon: new Icon(FontAwesomeIcons.googlePlay), 
                      onPressed: ()=> html.window.open("https://play.google.com/store/apps/dev?id=7315706573700759915", "Google Play"),
                    ),
                  ],
                ),
              ],
            ))
    )
    ;
  }
}

