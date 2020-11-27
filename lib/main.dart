import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  playNote(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color color, int note}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNote(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.cyan, note: 1),
              buildKey(color: Colors.pink, note: 2),
              buildKey(color: Colors.orange, note: 3),
              buildKey(color: Colors.red, note: 4),
              buildKey(color: Colors.purple, note: 5),
              buildKey(color: Colors.green, note: 6),
              buildKey(color: Colors.yellow, note: 7),
            ],
          ),
        ),
      ),
    );
  }
}
