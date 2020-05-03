import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Piano",
      home: HomePage(),
    ),
  );
}

void player(int soundNumber) {
  final audioPlay = AudioCache();
  audioPlay.play('note$soundNumber.wav');
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BuildKey(soundNumber: 1, color: Colors.red),
            BuildKey(soundNumber: 2, color: Colors.green),
            BuildKey(soundNumber: 3, color: Colors.yellow),
            BuildKey(soundNumber: 4, color: Colors.blue),
            BuildKey(soundNumber: 5, color: Colors.orange),
            BuildKey(soundNumber: 6, color: Colors.purple),
            BuildKey(soundNumber: 7, color: Colors.red),
          ],
        ),
      ),
    );
  }
}

class BuildKey extends StatelessWidget {
  BuildKey({this.color, this.soundNumber});
  final int soundNumber;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5.0),
          bottomRight: Radius.circular(5.0),
        ),
      ),
      width: 230,
      height: 60,
      child: FlatButton(
        color: color,
        onPressed: () {
          player(soundNumber);
        },
        child: null,
      ),
    );
  }
}
