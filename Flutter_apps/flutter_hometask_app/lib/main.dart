import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AddFiltersScreen.dart';


void main() =>
    runApp(MaterialApp(
      title: 'SearchDeck',
      theme: ThemeData(
        primarySwatch: Colors.primaryBlack,
      ),
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Search'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddFiltersScreen()),);
          }),
        ],
      ),
    );
  }
}


/*
class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Search'),
        actions: [
          !pressed
              ? IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      pressed = true;
                    });
                  })
              : Icon(null),
        ],
      ),
      body: Container(),
    );
  }
}
*/
