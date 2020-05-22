import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text(widget.title,), centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You never pushed the button:',
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        items: <Widget>[
          Icon(Icons.home, size: 20, semanticLabel: 'Home',),
          Icon(Icons.mic, size: 20,),
          Icon(Icons.radio, size: 20,),
          Icon(Icons.flash_on, size: 20,),
          Icon(Icons.library_music, size: 20,),
        ],
        index: 2,
        animationDuration: Duration(milliseconds: 200),
        backgroundColor: Colors.black38,
      ),
    );
  }
}