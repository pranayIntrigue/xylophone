import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  playSound(1);
                },
                color: Colors.red,
                child: Text('Play me 1'),
              ),
              FlatButton(
                onPressed: () {
                  playSound(2);
                },
                color: Colors.orange,
                child: Text('Play me 2'),
              ),
              FlatButton(
                onPressed: () {
                  playSound(3);
                },
                color: Colors.yellow,
                child: Text('Play me 3'),
              ),
              FlatButton(
                onPressed: () {
                  playSound(4);
                },
                color: Colors.green,
                child: Text('Play me 4'),
              ),
              FlatButton(
                onPressed: () {
                  playSound(5);
                },
                color: Colors.teal,
                child: Text('Play me 5'),
              ),
              FlatButton(
                onPressed: () {
                  playSound(6);
                },
                color: Colors.blue,
                child: Text('Play me 6'),
              ),
              FlatButton(
                onPressed: () {
                  playSound(7);
                },
                color: Colors.purple,
                child: Text('Play me 7'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
