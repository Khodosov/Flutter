import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'JackBox saundbar',
  theme: ThemeData(
    primarySwatch: Colors.primaryBlack,
  ),
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static AudioCache player = new AudioCache();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlatButton(
              onPressed: (){
                player.play("sounds/Pskov.mp3");
              },
              child: Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(40)
                ),
                child: Center(
                    child: Text('Запускаем Псков',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
                ),
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                  onPressed:(){
                    player.play("sounds/Pskov.mp3");
                  },
                  child: Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(40)
                    ),
                  )
              ),
              FlatButton(
                  onPressed: (){
                    player.play("sounds/Pskov.mp3");
                  },
                  child: Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(40)
                    ),
                  )
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                  onPressed: null,
                  child: Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(40)
                    ),
                  )
              ),
              FlatButton(
                  onPressed: null,
                  child: Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(40)
                    ),
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}