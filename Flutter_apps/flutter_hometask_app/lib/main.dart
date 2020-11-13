import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AdditionalFilters.dart';

void main() => runApp(MaterialApp(
      title: 'SearchDeck',
      theme: ThemeData(
        primarySwatch: Colors.primaryBlack,
      ),
      home: MyApp(),
    ));

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
        leading: pressed
            ? IconButton(
                icon: Icon(Icons.keyboard_arrow_left),
                onPressed: () {
                  setState(() {
                    pressed = false;
                  });
                })
            : null,
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
      body: Container(
        color: Colors.grey[800],
        child: Stack(
          children: [
            SizedBox.expand(
              child: Image.asset(
                'assets/images/results.jpg',
                fit: BoxFit.fill,
              ),
            ),
            pressed ? new AdditionalFilters() : Container(),
          ],
        ),
      ),
    );
  }
}
