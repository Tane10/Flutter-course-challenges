import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.amber, soundNumber: 2),
              buildKey(color: Colors.blue, soundNumber: 3),
              buildKey(color: Colors.yellow, soundNumber: 4),
              buildKey(color: Colors.pink, soundNumber: 5),
              buildKey(color: Colors.green, soundNumber: 6),
              buildKey(color: Colors.indigo, soundNumber: 7)
            ],
          ),
        ),
      ),
    );
  }
}
