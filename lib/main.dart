import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = new AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({int soundNumber, MaterialColor color, int shade = 500}) {
    return Expanded(
      child: FlatButton(
        color: color[shade],
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    buildKey(soundNumber: 1, color: Colors.red),
                    buildKey(soundNumber: 2, color: Colors.orange),
                    buildKey(soundNumber: 3, color: Colors.yellow),
                    buildKey(soundNumber: 4, color: Colors.green),
                    buildKey(soundNumber: 5, color: Colors.teal),
                    buildKey(soundNumber: 6, color: Colors.blue),
                    buildKey(soundNumber: 7, color: Colors.purple),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    buildKey(soundNumber: 1, color: Colors.red, shade: 300),
                    buildKey(soundNumber: 2, color: Colors.orange, shade: 300),
                    buildKey(soundNumber: 3, color: Colors.yellow, shade: 300),
                    buildKey(soundNumber: 4, color: Colors.green, shade: 300),
                    buildKey(soundNumber: 5, color: Colors.teal, shade: 300),
                    buildKey(soundNumber: 6, color: Colors.blue, shade: 300),
                    buildKey(soundNumber: 7, color: Colors.purple, shade: 300),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    buildKey(soundNumber: 1, color: Colors.red, shade: 100),
                    buildKey(soundNumber: 2, color: Colors.orange, shade: 100),
                    buildKey(soundNumber: 3, color: Colors.yellow, shade: 100),
                    buildKey(soundNumber: 4, color: Colors.green, shade: 100),
                    buildKey(soundNumber: 5, color: Colors.teal, shade: 100),
                    buildKey(soundNumber: 6, color: Colors.blue, shade: 100),
                    buildKey(soundNumber: 7, color: Colors.purple, shade: 100),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
