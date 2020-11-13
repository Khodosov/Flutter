import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keks peks'),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 60,
              color: Colors.red,
              child: Text(
                'Test text',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey,
                ),
                softWrap: false,
                overflow: TextOverflow.fade,
              ),
            ),
            Icon(
              Icons.search,
              size: 50,
              color: Colors.amber,
            )
            // =====
            /*BigColorBox(),
            Flexible(child: ColorBox()),
            SizedBox(
              width: 40,
            ),
            SizedBox(
                height: 100,
                width: 100,
                child: ColorBox()
            ),
            Flexible(child: ColorBox()),*/
          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(),
      ),
      child: Text('123'),
    );
  }
}

class BigColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(),
      ),
    );
  }
}
