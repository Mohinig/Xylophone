import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

void playsound(int sn) {
  final player = AudioCache();
  player.play('note$sn.wav');
}

Expanded buildkey({Color color, int sn}) {
  return Expanded(
    // ignore: missing_required_param
    child: FlatButton(
      color: color,
      onPressed: () {
        playsound(sn);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Xylophone'),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, sn: 1),
              buildkey(color: Colors.orange, sn: 2),
              buildkey(color: Colors.yellow, sn: 3),
              buildkey(color: Colors.green, sn: 4),
              buildkey(color: Colors.blue, sn: 5),
              buildkey(color: Colors.indigo, sn: 6),
              buildkey(color: Colors.purple, sn: 7),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
