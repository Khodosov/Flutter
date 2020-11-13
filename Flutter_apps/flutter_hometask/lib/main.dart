import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample',
      theme: ThemeData(
        primarySwatch: Colors.primaryBlack,
      ),
      home: PersonWidget(),
    );
  }
}

class PersonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Japan, High School'),
      ),
      body: Container(
        child: _buildMainColumn(),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _buildTopImage(),
          Center(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Text('Rating'),
                  ),
                  Card(
                    margin: const EdgeInsets.all(5),
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Text('butttons'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Text('Description'),
                  ),
                ],
              ),
            ),
          )
        ],
      );

  Widget _buildTopImage() => Container(
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Image.asset(
            'assets/images/omon_face.png',
            fit: BoxFit.cover,
          ),
        ),
      );
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavarited = false;
  int _favoriteCount = 1421;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('ЖУМАЙСЫНБА'),
    );
  }
}
