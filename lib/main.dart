import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildKey({int soundnumber, Color colorcode}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundnumber);
        },
        color: colorcode,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(soundnumber: 1, colorcode: Colors.redAccent),
                buildKey(soundnumber: 2, colorcode: Colors.orange),
                buildKey(soundnumber: 3, colorcode: Colors.teal),
                buildKey(soundnumber: 4, colorcode: Colors.blue),
                buildKey(soundnumber: 5, colorcode: Colors.blue.shade800),
                buildKey(soundnumber: 6, colorcode: Colors.purple),
                buildKey(soundnumber: 7, colorcode: Colors.pink),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
