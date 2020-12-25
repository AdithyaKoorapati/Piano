import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Expanded built({Color colors, int num}) {
      return Expanded(
        child: FlatButton(onPressed: () {
          final player = AudioCache();
          player.play("note$num.wav");
        },
            color: colors
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            built(colors: Colors.white, num: 1),
            built(colors: Colors.white38, num: 2),
            built(colors: Colors.amberAccent, num: 3),
            built(colors: Colors.blue, num: 4),
            built(colors: Colors.deepOrangeAccent, num: 5),
            built(colors: Colors.brown, num: 6),
            built(colors: Colors.teal, num: 7),
          ],
        ),
      ),


    );
  }
}

