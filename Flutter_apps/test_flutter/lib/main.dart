import 'package:flutter/material.dart';
import 'package:test_flutter/row_column.dart';
import 'package:test_flutter/MyContainer.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:test_flutter/flexible.dart';


void main() {
  debugPaintSizeEnabled = false;
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test App',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: MyFlex(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Search')),
      ),
      body: Container(
        child: Center(
          child: Text('Some space for some stuff'),
        ),
      ),
    );
  }
}
