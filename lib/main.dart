import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            createitem(c: Colors.red, n: 1),
            createitem(c: Colors.blueGrey, n: 2),
            createitem(c: Colors.green, n: 3),
            createitem(c: Colors.brown, n: 4),
            createitem(c: Colors.blue, n: 5),
            createitem(c: Colors.black, n: 6),
            createitem(c: Colors.yellow, n: 7),
          ],
        ),
      ),
    );
  }

  Expanded createitem({Color c, int n}) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0),
        onPressed: () {
          play(n);
        },
        child: Container(
          color: c,
        ),
      ),
    );
  }

  void play(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }
}
