import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Easy Chemistry"),
          centerTitle: true,
          backgroundColor: Colors.pink,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: Center(
            child: Container(
              margin: const EdgeInsets.all(25.0),
          child: Column(
            
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                size: 120.0,
                color: Colors.pink,
              ),
              RaisedButton(
                child: Text(
                  "Norbixina",
                  style: TextStyle(color: Colors.pink, fontSize: 25.0),
                ),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text(
                  "K0H",
                  style: TextStyle(color: Colors.pink, fontSize: 25.0),
                ),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text(
                  "Bixina",
                  style: TextStyle(color: Colors.pink, fontSize: 25.0),
                ),
                onPressed: () {},
              ),
            ],
          ),
        )));
  }
}
